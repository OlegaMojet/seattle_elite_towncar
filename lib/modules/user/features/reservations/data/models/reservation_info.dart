import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/passenger_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/payment_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/ride_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

part 'reservation_info.freezed.dart';
part 'reservation_info.g.dart';

@freezed
class ReservationInfoModel extends ReservationInfo with _$ReservationInfoModel {
  factory ReservationInfoModel({
    required int quoteId,
    required ReservationStatus status,
    double? price,
    required PassengerInfoModel passengerInfo,
    required RideDetailsModel rideDetails,
    String? additionalInfo,
    PaymentDetailsModel? paymentDetails,
  }) = _ReservationInfoModel;

   
    factory ReservationInfoModel.fromJson(Map<String, dynamic> json) => _$ReservationInfoModelFromJson(json);
}
