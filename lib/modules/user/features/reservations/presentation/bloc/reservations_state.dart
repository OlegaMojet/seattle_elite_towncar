import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

part 'reservations_state.freezed.dart';

@Freezed(copyWith: true)
class ReservationsState with _$ReservationsState {
  factory ReservationsState({
    List<ReservationInfo>? reservations,
  }) = _ReservationsState;
}