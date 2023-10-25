import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

enum OrderStatus {newOrder, active,  inTrip, done, canceled }

class OrderInfo {
  final int id;
  final OrderStatus orderStatus;
  final bool self;
  final double? price;
  final PassengerInfo passengerInfo;
  final RideDetails rideDetails;
  final String? additionalInfo;
  final PaymentDetails? paymentDetails;
  OrderInfo({
    required this.id,
    required this.orderStatus,
    this.self = true,
    this.price,
    required this.passengerInfo,
    required this.rideDetails,
    this.additionalInfo,
    this.paymentDetails,
  });
}
