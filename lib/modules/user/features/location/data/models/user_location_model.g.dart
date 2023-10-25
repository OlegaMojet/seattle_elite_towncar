// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLocationModel _$$_UserLocationModelFromJson(Map<String, dynamic> json) =>
    _$_UserLocationModel(
      json['clientId'] as String?,
      json['driverId'] as String?,
      json['location'] == null
          ? null
          : LatLng.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserLocationModelToJson(
        _$_UserLocationModel instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'driverId': instance.driverId,
      'location': instance.location,
    };
