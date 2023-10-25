import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

part 'location_state.freezed.dart';

@Freezed(copyWith: true)
class UserLocationState with _$UserLocationState {
  factory UserLocationState({
    ReservationInfo? info,
    LatLng? location,
  }) = _UserLocationScreenState;
}
