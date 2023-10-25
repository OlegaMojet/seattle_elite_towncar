import 'package:seattle_elite_towncar/modules/user/features/location/domain/entities/user_location.dart';

abstract class UserLocationRepository {
  Future<UserLocation> fetchLocation(UserLocation location);
}