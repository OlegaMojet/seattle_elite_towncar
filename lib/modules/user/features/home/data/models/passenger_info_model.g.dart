// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PassengerInfoModel _$$_PassengerInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_PassengerInfoModel(
      fullName: json['fullName'] as String,
      companyName: json['companyName'] as String?,
      phone: json['phone'] as String,
      daytimePhone: json['daytimePhone'] as String?,
      email: json['email'] as String,
      address: json['address'] as String,
      useInfoForPickup: json['useInfoForPickup'] as bool?,
      saveInfo: json['saveInfo'] as bool?,
    );

Map<String, dynamic> _$$_PassengerInfoModelToJson(
        _$_PassengerInfoModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'companyName': instance.companyName,
      'phone': instance.phone,
      'daytimePhone': instance.daytimePhone,
      'email': instance.email,
      'address': instance.address,
      'useInfoForPickup': instance.useInfoForPickup,
      'saveInfo': instance.saveInfo,
    };
