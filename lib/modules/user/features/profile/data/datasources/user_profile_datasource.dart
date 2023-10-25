import 'package:firebase_auth/firebase_auth.dart';
import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';

abstract class UserProfileDatasource {
  Future<ClientProfileModel> profile();
}

class UserProfileDatasourceImpl extends UserProfileDatasource {
  Future<ClientProfileModel> profile() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return ApiService.instance.restClient.getProfile(userId);
  }
}