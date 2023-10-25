import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';

part 'client_profile_model.freezed.dart';
part 'client_profile_model.g.dart';

@Freezed(fromJson: true, copyWith: false)
class ClientProfileModel extends ClientProfile with _$ClientProfileModel {
  factory ClientProfileModel({
    String? clientId,
    String? name,
    int? phoneNumber,
    String? address,
    String? companyName,
    String? daytimePhoneNumber,
    String? email,
    @JsonKey(name: 'notis')  int? notifications,
    String? cardNum,
  }) = _ClientProfileModel;

  factory ClientProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileModelFromJson(json);
}
