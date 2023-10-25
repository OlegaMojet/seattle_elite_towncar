// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      carId: json['carId'] as int?,
      carName: json['carName'] as String?,
      numOfBags: json['numOfBags'] as int?,
      numOfPass: json['numOfPass'] as int?,
      image: json['image'] as String?,
      vehicleType: json['vehicleType'] as int?,
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('carId', instance.carId);
  writeNotNull('carName', instance.carName);
  writeNotNull('numOfBags', instance.numOfBags);
  writeNotNull('numOfPass', instance.numOfPass);
  writeNotNull('image', instance.image);
  writeNotNull('vehicleType', instance.vehicleType);
  return val;
}
