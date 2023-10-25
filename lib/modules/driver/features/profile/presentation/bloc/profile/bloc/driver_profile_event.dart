import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

abstract class DriverProfileEvent {}

class FetchProfile extends DriverProfileEvent {
  final DriverProfile? profile;

  FetchProfile({this.profile});
}

class InitialProfile extends DriverProfileEvent {}
