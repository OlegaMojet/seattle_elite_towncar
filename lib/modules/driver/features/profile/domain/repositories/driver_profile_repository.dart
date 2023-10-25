import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

abstract class DriverProfileRepository {
  Future<DriverProfile> profile();
}