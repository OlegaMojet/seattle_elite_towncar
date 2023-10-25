import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

import 'form_state.dart';

part 'form_event.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(const FormState()) {
    on(_onAddPassengerInfo);
    on(_onAddRideDetails);
    on(_onAddAdditionalInfo);
    on(_onIsReservation);
    on(_onAddPaymentDetails);
  }

  _onAddPassengerInfo(AddPassengerInfo event, Emitter<FormState> emit) {
    emit(state.copyWith(passengerInfo: event.passengerInfo));
  }

  _onAddRideDetails(AddRideDetails event, Emitter<FormState> emit) {
    emit(state.copyWith(rideDetails: event.rideDetails));
  }

  _onAddAdditionalInfo(AddAdditionalInfo event, Emitter<FormState> emit) {
    emit(state.copyWith(additionalInfo: event.additionalInfo));
  }

  _onIsReservation(ChangeType event, Emitter<FormState> emit) {
    emit(state.copyWith(isReservation: event.isReservation));
  }

  _onAddPaymentDetails(AddPaymentDetails event, Emitter<FormState> emit) {
    emit(state.copyWith(paymentDetails: event.paymentDetails));
  }
}
