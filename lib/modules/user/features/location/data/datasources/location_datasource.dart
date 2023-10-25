import 'package:seattle_elite_towncar/modules/user/features/location/data/models/user_location_model.dart';

abstract class UserLocationDatasource {
  Future<UserLocationModel> fetchLocation(UserLocationModel location);
}

class UserLocationDatasourceImpl extends UserLocationDatasource {
  @override
  Future<UserLocationModel> fetchLocation(UserLocationModel location) async {
    return location;
  }

}