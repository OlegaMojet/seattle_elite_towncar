import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

abstract class AuthRepository {
  Future<ClientProfile> clientAuthorize(ClientProfileModel client);
  Future<DriverProfile> driverAuthorize(DriverProfileModel driver);
}