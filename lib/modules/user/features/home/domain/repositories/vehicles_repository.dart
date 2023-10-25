import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

abstract class VehiclesRepository {
  Future<List<Car>?> getCars();


}