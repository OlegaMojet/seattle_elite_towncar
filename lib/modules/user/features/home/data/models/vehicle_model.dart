import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel extends Vehicle with _$VehicleModel {
  factory VehicleModel({
    required int id,
    required String image,
    required int vehicleType,
    required String model,
    required int numOfPass,
    required int numOfBags,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}
