import 'package:seattle_elite_towncar/modules/driver/features/profile/data/datasources/fleet_datasource.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/repositories/fleet_repository.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

class FleetRepositoryImpl extends FleetRepository {
  final _datasource = FleetDatasourceImpl();
  @override
  Future<int> addCar(Car car) async => await _datasource.addCar(car.toCarModel);

  @override
  Future<List<Car>> fetchFleet() async {
    final fleet = await _datasource.fetchFleet();
    return fleet ?? [];
  }

  @override
  Future<void> removeCar(int id) {
    // TODO: implement removeCar
    throw UnimplementedError();
  }

  @override
  Future<void> updateCar(Car car) {
    // TODO: implement updateCar
    throw UnimplementedError();
  }
}
