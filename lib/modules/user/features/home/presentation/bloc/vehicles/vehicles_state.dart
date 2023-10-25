import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

part 'vehicles_state.freezed.dart';

@Freezed(copyWith: true)
class VehiclesState with _$VehiclesState {
  factory VehiclesState({
    List<Car>? cars,
    int? vehicleType,
  }) = _VehiclesState;
}
