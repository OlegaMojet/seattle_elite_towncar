import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

part 'driver_profile_model.freezed.dart';
part 'driver_profile_model.g.dart';

@Freezed(fromJson: true, copyWith: true)
class DriverProfileModel extends DriverProfile with _$DriverProfileModel {
  factory DriverProfileModel({
    @JsonKey(name: 'driverId') String? id,
    String? name,
    int? phoneNumber,
    int? driverMain,
    @JsonKey(name: 'notis') @Default(true) bool notifications,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}
