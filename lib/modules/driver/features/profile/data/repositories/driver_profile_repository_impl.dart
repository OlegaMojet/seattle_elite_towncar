import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/datasources/driver_profile_datasource.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/repositories/driver_profile_repository.dart';

class DriverProfileRepositoryImpl extends DriverProfileRepository {
  final _datasource = DriverProfileDatasourceImpl();
  @override
  Future<DriverProfile> profile() {
    return _datasource.profile();
  }
}
