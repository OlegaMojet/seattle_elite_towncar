import 'package:latlong2/latlong.dart';

class UserLocation {
  final String? clientId;
  final String? driverId;
  final LatLng? location;

  UserLocation({this.clientId, this.driverId, this.location});
}