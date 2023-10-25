import 'package:firebase_auth/firebase_auth.dart';
import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';

abstract class DriverProfileDatasource {
  Future<DriverProfileModel> profile();
}

class DriverProfileDatasourceImpl extends DriverProfileDatasource {
  @override
  Future<DriverProfileModel> profile() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return ApiService.instance.restClient.getDriverProfile(userId);
  }
}