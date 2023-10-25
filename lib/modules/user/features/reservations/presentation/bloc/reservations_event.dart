import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_state.dart';

abstract class ReservationsEvent {}

class FetchReservations extends ReservationsEvent {
  final List<Car>? cars;

  FetchReservations({required this.cars});
}

class AddReservation extends ReservationsEvent {
  final FormState formData;
  

  AddReservation({required this.formData});
  
}

class CancelReservation extends ReservationsEvent {
  final int quoteId;
  final String clientId;
  final String driverId;
  final int status;

  CancelReservation({required this.quoteId, required this.clientId, required this.driverId, required this.status});
}
