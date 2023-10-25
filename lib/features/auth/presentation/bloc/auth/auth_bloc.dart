import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/core/services/notification_service.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/repositories/auth_repository_impl.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final _authRepositoryImpl = AuthRepositoryImpl();

  String _verId = '';
  String _otp = '';

  AuthorizationBloc() : super(Initial()) {
    on(_onAuthenticate);
    on(_onConfirmOTP);
    on(_onLogout);
    on(_onHandleOtp);
  }
  _onAuthenticate(Authenticate event, Emitter<AuthorizationState> emit) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    if (event.oAuthProvider is PhoneAuthProvider) {
      print('phone: ${StringUtils.normalizePhone(event.phone!)}');
      try {
        final result = await auth.verifyPhoneNumber(
          phoneNumber: StringUtils.normalizePhone(event.phone!),
          verificationCompleted: (phoneAuthCredential) async {
            // if (Platform.isAndroid) {
            //   final authResult =
            //       await auth.signInWithCredential(phoneAuthCredential);
            //   print("result auth: $authResult");
            //   final uid = authResult.user!.uid;
            //   if (event.isDriver) {
            //     await _authRepositoryImpl.driverAuthorize(uid);
            //   } else {
            //     final client = await _authRepositoryImpl.clientAuthorize(uid);
            //   }

            // }
            // emit(Authenticated(isDriver: event.isDriver));
          },
          verificationFailed: (error) {
            print(error.message);
          },
          codeSent: (verificationId, forceResendingToken) {
            _verId = verificationId;
          },
          codeAutoRetrievalTimeout: (verificationId) {},
        );
      } catch (exception, stackTrace) {
        if (!kDebugMode) {
          await Sentry.captureException(
            exception,
            stackTrace: stackTrace,
          );
        }
        print(exception);
      }
    }
  }

  _onConfirmOTP(OTPConfirm event, Emitter<AuthorizationState> emit) async {
    emit(Authenticating());
    final sp = await SharedPreferences.getInstance();
    PhoneAuthCredential cred =
        PhoneAuthProvider.credential(verificationId: _verId, smsCode: _otp);
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      final result = await auth.signInWithCredential(cred);
      final uid = result.user!.uid;
      final phone = result.user!.phoneNumber;
      if (event.isDriver) {
        final driver = await _authRepositoryImpl.driverAuthorize(
          DriverProfileModel(
            id: uid,
            name: event.name,
            phoneNumber: StringUtils.normalizePhoneInt(phone!),
          ),
        );
        emit(Authenticated(isDriver: true, driverProfile: driver));
        await sp.setBool('isDriver', true);
      } else {
        final client = await _authRepositoryImpl.clientAuthorize(
          ClientProfileModel(
            clientId: uid,
            name: event.name,
            phoneNumber: StringUtils.normalizePhoneInt(phone!),
          ),
        );
        emit(Authenticated(isDriver: false, clientProfile: client));
        await sp.setBool('isDriver', false);
      }
    } catch (exception, stackTrace) {
      if (!kDebugMode) {
        await Sentry.captureException(
          exception,
          stackTrace: stackTrace,
        );
      }
      print(exception);
    }
  }

  _onLogout(Logout event, Emitter<AuthorizationState> emit) async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('isDriver');
    emit(Initial());
    
    await NotificationService().cancelAllNotifications();
  }

  _onHandleOtp(HandleOtp event, Emitter<AuthorizationState> emit) async {
    _otp = event.code;
  }
}
