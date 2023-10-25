import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';

part 'passenger_info_model.freezed.dart';
part 'passenger_info_model.g.dart';

@freezed
class PassengerInfoModel extends PassengerInfo with _$PassengerInfoModel {
  const factory PassengerInfoModel({
    required String fullName,
    String? companyName,
    required String phone,
    String? daytimePhone,
    required String email,
    required String address,
    bool? useInfoForPickup,
    bool? saveInfo,
  }) = _PassengerInfoModel;

  factory PassengerInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PassengerInfoModelFromJson(json);
}
