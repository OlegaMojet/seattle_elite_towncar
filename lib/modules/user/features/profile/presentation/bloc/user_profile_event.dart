import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';

abstract class UserProfileEvent {}

class FetchProfile extends UserProfileEvent {
  final ClientProfile? profile;

  FetchProfile({this.profile});
}