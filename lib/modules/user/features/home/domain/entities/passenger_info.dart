import 'package:seattle_elite_towncar/modules/user/features/home/data/models/passenger_info_model.dart';

extension ToPassengerInfoModel on PassengerInfo {
  PassengerInfoModel get toModel => PassengerInfoModel(
        fullName: fullName,
        companyName: companyName,
        phone: phone,
        daytimePhone: daytimePhone,
        email: email,
        address: address,
        useInfoForPickup: useInfoForPickup,
        saveInfo: saveInfo,
      );
}

class PassengerInfo {
  final String fullName;
  final String? companyName;
  final String phone;
  final String? daytimePhone;
  final String email;
  final String address;
  final bool? useInfoForPickup;
  final bool? saveInfo;

  PassengerInfo({
    required this.fullName,
    this.companyName,
    required this.phone,
    this.daytimePhone,
    required this.email,
    required this.address,
    this.useInfoForPickup,
    this.saveInfo = false,
  });
}
