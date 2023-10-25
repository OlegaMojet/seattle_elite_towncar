import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'user_location_model.freezed.dart';
part 'user_location_model.g.dart';

@freezed
class UserLocationModel with _$UserLocationModel {
   factory UserLocationModel(
    String? clientId,
    String? driverId,
    LatLng? location,
   ) = _UserLocationModel;


  factory UserLocationModel.fromJson(Map<String, dynamic> json) => _$UserLocationModelFromJson(json);
}