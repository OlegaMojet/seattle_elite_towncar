import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';

abstract class UserProfileRepository {
  Future<ClientProfile> profile();
}