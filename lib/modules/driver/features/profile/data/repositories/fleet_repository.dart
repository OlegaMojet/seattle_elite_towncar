import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

abstract class FleetRepository {
  Future<int> addCar(Car car);

  Future<void> updateCar(Car car);

  Future<void> removeCar(int id);

  Future<List<Car>> fetchFleet();
}