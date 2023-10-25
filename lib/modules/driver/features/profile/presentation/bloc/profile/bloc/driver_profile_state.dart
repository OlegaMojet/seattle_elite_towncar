import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

part 'driver_profile_state.freezed.dart';

abstract class DriverProfileState{}

class DriverProfileInitial extends DriverProfileState {}


@freezed
class FetchedDriverProfileState extends DriverProfileState with _$FetchedDriverProfileState {
  factory FetchedDriverProfileState({
    required DriverProfile profile,
  }) = _FetchedDriverProfileState;
}
