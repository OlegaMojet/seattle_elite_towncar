
part of 'form_bloc.dart';

abstract class FormEvent {}

class ChangeType extends FormEvent {
  final bool isReservation;

  ChangeType({required this.isReservation});
}

class AddPassengerInfo extends FormEvent {
  final PassengerInfo passengerInfo;

  AddPassengerInfo({required this.passengerInfo});
}

class AddRideDetails extends FormEvent {
  final RideDetails rideDetails;

  AddRideDetails({required this.rideDetails});
}

class AddAdditionalInfo extends FormEvent {
  final String additionalInfo;

  AddAdditionalInfo({required this.additionalInfo});
}

class AddPaymentDetails extends FormEvent {
  final PaymentDetails paymentDetails;

  AddPaymentDetails({required this.paymentDetails});
}
