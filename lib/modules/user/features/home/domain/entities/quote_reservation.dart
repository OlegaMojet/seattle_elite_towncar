import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/pickup_destination_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

class QuoteReservation {
  final int? quoteId;
  final int carId;
  final String clientId;
  final String? driverId;
  final String name;
  final String? companyName;
  final int phoneNumber;
  final int? daytimePhoneNumber;
  final String email;
  final String homeAddress;
  final int serviceType;
  final String dateTime;
  final int? numOfBags;
  final int? numOfPass;
  final PickupDestinationInfo pickupInfo;
  final PickupDestinationInfo destinationInfo;
  final String? additionalInfo;
  final int driverStatus;
  final int clientStatus;
  final double? price;

  QuoteReservation({
    this.quoteId,
    required this.carId,
    required this.clientId,
    this.driverId,
    required this.name,
    this.companyName,
    required this.phoneNumber,
    this.daytimePhoneNumber,
    required this.email,
    required this.homeAddress,
    required this.serviceType,
    required this.dateTime,
    this.numOfBags,
    this.numOfPass,
    required this.pickupInfo,
    required this.destinationInfo,
    this.additionalInfo,
    required this.driverStatus,
    required this.clientStatus,
    this.price,
  });
}
