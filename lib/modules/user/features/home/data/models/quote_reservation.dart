import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/pickup_destination_info_model.dart';

part 'quote_reservation.freezed.dart';
part 'quote_reservation.g.dart';

@freezed
abstract class QuoteReservationModel with _$QuoteReservationModel {
  @JsonSerializable(includeIfNull: false)
  factory QuoteReservationModel({
    int? quoteId,
    required int carId,
    required String clientId,
    String? driverId,
    required String name,
    String? companyName,
    required int phoneNumber,
    int? daytimePhoneNumber,
    required String email,
    required String homeAddress,
    required int serviceType,
    required String dateTime,
    int? numOfBags,
    int? numOfPass,
    required PickupDestinationInfoModel pickupInfo,
    required PickupDestinationInfoModel destinationInfo,
    String? additionalInfo,
    required int driverStatus,
    required int clientStatus,
    double? price,
  }) = _QuoteReservationModel;
  factory QuoteReservationModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteReservationModelFromJson(json);
}
