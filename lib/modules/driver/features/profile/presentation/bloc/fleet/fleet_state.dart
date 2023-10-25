import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

part 'fleet_state.freezed.dart';

@Freezed(copyWith: true)
class FleetState with _$FleetState {
   factory FleetState({@Default([]) List<Car> myCars}) = _FleetState;
}