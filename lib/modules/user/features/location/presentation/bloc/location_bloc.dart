import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/data/repositories/location_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/domain/entities/user_location.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_state.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:location_permissions/location_permissions.dart';

class UserLocationBloc extends Bloc<UserLocationEvent, UserLocationState> {
  late StreamSubscription _locationSubscription;
  final _repository = UserLocationRepositoryImpl();
  UserLocationBloc() : super(UserLocationState()) {
    on(_onFetchNewLocation);
  }

  _onFetchNewLocation(
      FetchNewLocation event, Emitter<UserLocationState> emit) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final permission = await LocationPermissions().requestPermissions(
        permissionLevel: LocationPermissionLevel.locationWhenInUse);
    // Geolocator.getPositionStream()
    //     .debounce(const Duration(seconds: 1))
    //     .listen((value) async {
    //   await _repository
    //       .fetchLocation(
    //         UserLocation(
    //           location: LatLng(value.latitude, value.longitude),
    //           clientId: auth.currentUser?.uid,
    //         ),
    //       )
    //       .then(
    //         (value) => emit(
    //           state.copyWith(
    //             location: LatLng(
    //               value.location!.latitude,
    //               value.location!.longitude,
    //             ),
    //           ),
    //         ),
    //       );
    // });
  }
}
