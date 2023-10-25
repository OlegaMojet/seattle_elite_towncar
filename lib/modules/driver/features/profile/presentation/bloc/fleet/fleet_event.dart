import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

abstract class FleetEvent {}

class AddCar extends FleetEvent {
  final Car car;

  AddCar({required this.car});
}

class UpdateCar extends FleetEvent {
  final Car car;

  UpdateCar({required this.car});
}

class RemoveCar extends FleetEvent {
  final int carId;

  RemoveCar({required this.carId});
}

class FetchFleet extends FleetEvent {
  
}
