part of 'auth_bloc.dart';

abstract class AuthorizationEvent {}

class Authenticate extends AuthorizationEvent {
  final AuthProvider oAuthProvider;
  final bool isDriver;
  final String? phone;
  final String? name;

  Authenticate({
    required this.oAuthProvider,
    required this.isDriver,
    this.phone,
    this.name,
  });
}

class OTPConfirm extends AuthorizationEvent {
  final bool isDriver;
  final String? name;

  OTPConfirm({required this.isDriver, this.name});
}

class Logout extends AuthorizationEvent {}

class HandleOtp extends AuthorizationEvent {
  final String code;

  HandleOtp({required this.code});
}
