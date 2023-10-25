import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';

abstract class FleetDatasource {
  Future<int> addCar(CarModel car);

  Future<void> updateCar(CarModel car);

  Future<void> removeCar(int id);

  Future<List<CarModel>?> fetchFleet();
}

class FleetDatasourceImpl extends FleetDatasource {
  @override
  Future<int> addCar(CarModel car) async {
    final newCar = await ApiService.instance.restClient.addCar(car);
    return newCar.carId!;
  }

  @override
  Future<List<CarModel>?> fetchFleet() async =>
      ApiService.instance.restClient.getCars();

  @override
  Future<void> removeCar(int id) async =>
      ApiService.instance.restClient.removeCar({'carId': id});

  @override
  Future<void> updateCar(CarModel car) async =>
      await ApiService.instance.restClient.updateCar(car);
}
