// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_destination_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PickupDestinationInfoModel _$$_PickupDestinationInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_PickupDestinationInfoModel(
      addressType: json['addressType'] as int,
      address: json['address'] as String?,
      airportName: json['airportName'] as String?,
      airlineName: json['airlineName'] as String?,
      flightNumber: json['flightNumber'] as String?,
    );

Map<String, dynamic> _$$_PickupDestinationInfoModelToJson(
        _$_PickupDestinationInfoModel instance) =>
    <String, dynamic>{
      'addressType': instance.addressType,
      'address': instance.address,
      'airportName': instance.airportName,
      'airlineName': instance.airlineName,
      'flightNumber': instance.flightNumber,
    };
