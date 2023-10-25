import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/pickup_destination_info.dart';

part 'pickup_destination_info_model.freezed.dart';
part 'pickup_destination_info_model.g.dart';

@freezed
abstract class PickupDestinationInfoModel extends PickupDestinationInfo with _$PickupDestinationInfoModel {
  factory PickupDestinationInfoModel({
    required int addressType,
    String? address,
    String? airportName,
    String? airlineName,
    String? flightNumber,
  }) = _PickupDestinationInfoModel;
  factory PickupDestinationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PickupDestinationInfoModelFromJson(json);
}
