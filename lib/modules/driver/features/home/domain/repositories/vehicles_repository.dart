import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';

abstract class VehiclesRepository {
  Future<List<Car>> getVehicles();
}