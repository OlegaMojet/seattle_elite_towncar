import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';

abstract class VehiclesDataSource {
  Future<List<CarModel>?> getCars();
}

class VehiclesDataSourceImpl implements VehiclesDataSource {
  @override
  Future<List<CarModel>?> getCars() {
    return ApiService.instance.restClient.getClientCars();
  }
}
