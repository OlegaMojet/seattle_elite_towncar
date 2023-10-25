import 'package:seattle_elite_towncar/modules/user/features/location/domain/entities/user_location.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/domain/repositories/location_repository.dart';

class UserLocationRepositoryImpl extends UserLocationRepository {
  @override
  Future<UserLocation> fetchLocation(UserLocation location) async {
    return location;
  }

}