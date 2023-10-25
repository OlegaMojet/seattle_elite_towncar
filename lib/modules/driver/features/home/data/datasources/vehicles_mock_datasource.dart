import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';

abstract class VehiclesDataSource {
  Future<List<CarModel>> getVehicles();
}

class VehiclesDataSourceImpl implements VehiclesDataSource {
  @override
  Future<List<CarModel>> getVehicles() async {
    
    return Future.value([]);
  }
}
