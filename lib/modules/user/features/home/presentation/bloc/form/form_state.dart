

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

part 'form_state.freezed.dart';

@Freezed(copyWith: true)
class FormState with _$FormState {
  const factory FormState({
    @Default(false) bool isReservation,
    PassengerInfo? passengerInfo,
    RideDetails? rideDetails,
    String? additionalInfo,
    PaymentDetails? paymentDetails,
  }) = _FormState;
}