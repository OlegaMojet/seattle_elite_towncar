import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/passenger_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/payment_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/ride_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

part 'order_info_model.freezed.dart';

@Freezed(copyWith: true)
class OrderInfoModel extends OrderInfo with _$OrderInfoModel {
  factory OrderInfoModel({
    required int id,
    required OrderStatus orderStatus,
    @Default(true) bool self,
    double? price,
    required PassengerInfoModel passengerInfo,
    required RideDetailsModel rideDetails,
    String? additionalInfo,
    PaymentDetailsModel? paymentDetails,
  }) = _OrderInfoModel;
}
