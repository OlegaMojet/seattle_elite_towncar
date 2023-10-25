// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverProfileModel _$$_DriverProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_DriverProfileModel(
      id: json['driverId'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as int?,
      driverMain: json['driverMain'] as int?,
      notifications: json['notis'] as bool? ?? true,
    );

Map<String, dynamic> _$$_DriverProfileModelToJson(
        _$_DriverProfileModel instance) =>
    <String, dynamic>{
      'driverId': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'driverMain': instance.driverMain,
      'notis': instance.notifications,
    };
