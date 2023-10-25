import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/ride_details_model.dart';

extension ToRideDetailsModel on RideDetails {
  RideDetailsModel get toModel => RideDetailsModel(
        vehicle: vehicle.toCarModel,
        serviceType: serviceType,
        numOfBags: numOfBags,
        numOfPass: numOfPass,
        dateTime: dateTime,
        address: address,
        pickupType: pickupType,
        pickupPlace: pickupPlace,
        pickupAddress: pickupAddress,
        pickupAirportNameOrCode: pickupAirportNameOrCode,
        pickupAirlineName: pickupAirlineName,
        pickupFlightNumber: pickupFlightNumber,
        destinationType: destinationType,
        destinationAddress: destinationAddress,
        destinationAirlineName: destinationAirlineName,
        destinationAirportNameOrCode: destinationAirportNameOrCode,
        destinationFlightNumber: destinationFlightNumber,
        destinationPlace: destinationPlace,
      );
}

class RideDetails {
  final Car vehicle;
  final int serviceType;
  final DateTime dateTime;
  final int? numOfBags;
  final int? numOfPass;
  final String address;
  final int pickupPlace;
  final String? pickupAddress;
  final String? pickupAirportNameOrCode;
  final String? pickupAirlineName;
  final String? pickupFlightNumber;
  final int? pickupType;
  final int destinationPlace;
  final String? destinationAddress;
  final String? destinationAirportNameOrCode;
  final String? destinationAirlineName;
  final String? destinationFlightNumber;
  final int? destinationType;

  RideDetails({
    required this.vehicle,
    required this.serviceType,
    required this.dateTime,
    this.numOfBags,
    this.numOfPass,
    required this.address,
    this.pickupPlace = 0,
    this.pickupAddress,
    this.pickupAirportNameOrCode,
    this.pickupAirlineName,
    this.pickupFlightNumber,
    this.pickupType,
    this.destinationPlace = 0,
    this.destinationAddress,
    this.destinationAirportNameOrCode,
    this.destinationAirlineName,
    this.destinationFlightNumber,
    this.destinationType,
  });
}
