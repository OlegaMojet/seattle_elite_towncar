import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';

abstract class AuthDatasource {
  Future<ClientProfileModel> clientAuthorize(ClientProfileModel client);
  Future<DriverProfileModel> driverAuthorize(DriverProfileModel driver);
}

class AuthDatasourceImpl implements AuthDatasource {
  @override
  Future<ClientProfileModel> clientAuthorize(ClientProfileModel client) async {
    await ApiService.instance.restClient.clientAuthorize({
      'clientId': client.clientId!,
      if (client.name != null) 'name': client.name!,
      'phoneNumber': client.phoneNumber!
    });
    final profile =
        await ApiService.instance.restClient.getProfile(client.clientId!);
    return profile;
  }

  @override
  Future<DriverProfileModel> driverAuthorize(DriverProfileModel driver) async {
    final list = await ApiService.instance.restClient.getDriversList();
    final profile = await ApiService.instance.restClient.driverAuthorize({
      'driverId': driver.id,
      if (driver.name != null) 'name': driver.name,
      'driverMain': driver.id == list.first.id ? 1 : 0,
      'phoneNumber': driver.phoneNumber!,
    });
    return profile.copyWith(driverMain: driver.id == list.first.id ? 1 : 0);
  }
}
