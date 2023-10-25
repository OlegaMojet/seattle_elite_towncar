import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/vehicle_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';

part 'ride_details_model.freezed.dart';
part 'ride_details_model.g.dart';

@freezed
class RideDetailsModel extends RideDetails with _$RideDetailsModel {
  factory RideDetailsModel({
    required CarModel vehicle,
    required int serviceType,
    required DateTime dateTime,
    int? numOfBags,
    int? numOfPass,
    required String address,
    @Default(0) int pickupPlace,
    String? pickupAddress,
    String? pickupAirportNameOrCode,
    String? pickupAirlineName,
    String? pickupFlightNumber,
    int? pickupType,
    @Default(0) int destinationPlace,
    String? destinationAddress,
    String? destinationAirportNameOrCode,
    String? destinationAirlineName,
    String? destinationFlightNumber,
    int? destinationType,
  }) = _RideDetailsModel;

  factory RideDetailsModel.fromJson(Map<String, dynamic> json) => _$RideDetailsModelFromJson(json);
}
