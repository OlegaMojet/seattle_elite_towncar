// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCarModel _$$_ListCarModelFromJson(Map<String, dynamic> json) =>
    _$_ListCarModel(
      listCarModel: (json['listCarModel'] as List<dynamic>)
          .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCarModelToJson(_$_ListCarModel instance) =>
    <String, dynamic>{
      'listCarModel': instance.listCarModel,
    };
