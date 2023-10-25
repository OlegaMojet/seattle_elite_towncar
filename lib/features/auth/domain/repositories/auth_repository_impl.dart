import 'package:seattle_elite_towncar/features/auth/data/datasources/auth_datasource.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/repositories/auth_repository.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _datasource = AuthDatasourceImpl();
  @override
  Future<ClientProfile> clientAuthorize(ClientProfileModel client) async =>
      _datasource.clientAuthorize(client);

  @override
  Future<DriverProfile> driverAuthorize(DriverProfileModel driver) async =>
      _datasource.driverAuthorize(driver);
}
