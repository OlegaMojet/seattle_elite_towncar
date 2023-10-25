import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/datasources/vehicles_datasource.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/repositories/vehicles_repository.dart';

class VehiclesRepositoryImpl implements VehiclesRepository {
  late VehiclesDataSource _vehiclesDataSource;

  VehiclesRepositoryImpl({required VehiclesDataSource vehiclesDataSource})
      : _vehiclesDataSource = vehiclesDataSource;
  @override
  Future<List<Car>> getCars() async {
    final list = await _vehiclesDataSource.getCars();
    return list ?? [];
  }
}
