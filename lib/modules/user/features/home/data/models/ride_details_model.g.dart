// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideDetailsModel _$$_RideDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_RideDetailsModel(
      vehicle: CarModel.fromJson(json['vehicle'] as Map<String, dynamic>),
      serviceType: json['serviceType'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      numOfBags: json['numOfBags'] as int?,
      numOfPass: json['numOfPass'] as int?,
      address: json['address'] as String,
      pickupPlace: json['pickupPlace'] as int? ?? 0,
      pickupAddress: json['pickupAddress'] as String?,
      pickupAirportNameOrCode: json['pickupAirportNameOrCode'] as String?,
      pickupAirlineName: json['pickupAirlineName'] as String?,
      pickupFlightNumber: json['pickupFlightNumber'] as String?,
      pickupType: json['pickupType'] as int?,
      destinationPlace: json['destinationPlace'] as int? ?? 0,
      destinationAddress: json['destinationAddress'] as String?,
      destinationAirportNameOrCode:
          json['destinationAirportNameOrCode'] as String?,
      destinationAirlineName: json['destinationAirlineName'] as String?,
      destinationFlightNumber: json['destinationFlightNumber'] as String?,
      destinationType: json['destinationType'] as int?,
    );

Map<String, dynamic> _$$_RideDetailsModelToJson(_$_RideDetailsModel instance) =>
    <String, dynamic>{
      'vehicle': instance.vehicle,
      'serviceType': instance.serviceType,
      'dateTime': instance.dateTime.toIso8601String(),
      'numOfBags': instance.numOfBags,
      'numOfPass': instance.numOfPass,
      'address': instance.address,
      'pickupPlace': instance.pickupPlace,
      'pickupAddress': instance.pickupAddress,
      'pickupAirportNameOrCode': instance.pickupAirportNameOrCode,
      'pickupAirlineName': instance.pickupAirlineName,
      'pickupFlightNumber': instance.pickupFlightNumber,
      'pickupType': instance.pickupType,
      'destinationPlace': instance.destinationPlace,
      'destinationAddress': instance.destinationAddress,
      'destinationAirportNameOrCode': instance.destinationAirportNameOrCode,
      'destinationAirlineName': instance.destinationAirlineName,
      'destinationFlightNumber': instance.destinationFlightNumber,
      'destinationType': instance.destinationType,
    };
