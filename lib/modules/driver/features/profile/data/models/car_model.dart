import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel extends Car with _$CarModel {
  @JsonSerializable(includeIfNull: false)
  factory CarModel({
    int? carId,
    String? carName,
    int? numOfBags,
    int? numOfPass,
    String? image,
    int? vehicleType,
  }) = _CarModel;
  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
