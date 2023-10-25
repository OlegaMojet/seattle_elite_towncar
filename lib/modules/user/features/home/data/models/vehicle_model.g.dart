// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      id: json['id'] as int,
      image: json['image'] as String,
      vehicleType: json['vehicleType'] as int,
      model: json['model'] as String,
      numOfPass: json['numOfPass'] as int,
      numOfBags: json['numOfBags'] as int,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'vehicleType': instance.vehicleType,
      'model': instance.model,
      'numOfPass': instance.numOfPass,
      'numOfBags': instance.numOfBags,
    };
