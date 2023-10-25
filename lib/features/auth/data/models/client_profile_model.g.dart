// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientProfileModel _$$_ClientProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_ClientProfileModel(
      clientId: json['clientId'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as int?,
      address: json['address'] as String?,
      companyName: json['companyName'] as String?,
      daytimePhoneNumber: json['daytimePhoneNumber'] as String?,
      email: json['email'] as String?,
      notifications: json['notis'] as int?,
      cardNum: json['cardNum'] as String?,
    );

Map<String, dynamic> _$$_ClientProfileModelToJson(
        _$_ClientProfileModel instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'companyName': instance.companyName,
      'daytimePhoneNumber': instance.daytimePhoneNumber,
      'email': instance.email,
      'notis': instance.notifications,
      'cardNum': instance.cardNum,
    };
