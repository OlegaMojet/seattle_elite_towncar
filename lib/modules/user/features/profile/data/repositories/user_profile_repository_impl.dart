import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/data/datasources/user_profile_datasource.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/domain/repositories/user_profile_repository.dart';

class UserProfileRepositoryImpl extends UserProfileRepository {
  final _datasource = UserProfileDatasourceImpl();
  @override
  Future<ClientProfile> profile() {
    return _datasource.profile();
  }
}
