part of 'auth_bloc.dart';

abstract class AuthorizationState {}

class Initial extends AuthorizationState {}

class Authenticating extends AuthorizationState {}

class Authenticated extends AuthorizationState {
  final bool isDriver;
  final DriverProfile? driverProfile;
  final ClientProfile? clientProfile;

  Authenticated({required this.isDriver, this.driverProfile, this.clientProfile});
}

class AuthenticateFailure extends AuthorizationState {
  final String errorMessage;

  AuthenticateFailure(this.errorMessage);
}