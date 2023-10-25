abstract class VehiclesEvent {}

class FetchVehicles extends VehiclesEvent {
  
}

class FilterVehicles extends VehiclesEvent {
  final int? vehicleType;

  FilterVehicles({required this.vehicleType});
}