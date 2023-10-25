// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteReservationModel _$$_QuoteReservationModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuoteReservationModel(
      quoteId: json['quoteId'] as int?,
      carId: json['carId'] as int,
      clientId: json['clientId'] as String,
      driverId: json['driverId'] as String?,
      name: json['name'] as String,
      companyName: json['companyName'] as String?,
      phoneNumber: json['phoneNumber'] as int,
      daytimePhoneNumber: json['daytimePhoneNumber'] as int?,
      email: json['email'] as String,
      homeAddress: json['homeAddress'] as String,
      serviceType: json['serviceType'] as int,
      dateTime: json['dateTime'] as String,
      numOfBags: json['numOfBags'] as int?,
      numOfPass: json['numOfPass'] as int?,
      pickupInfo: PickupDestinationInfoModel.fromJson(
          json['pickupInfo'] as Map<String, dynamic>),
      destinationInfo: PickupDestinationInfoModel.fromJson(
          json['destinationInfo'] as Map<String, dynamic>),
      additionalInfo: json['additionalInfo'] as String?,
      driverStatus: json['driverStatus'] as int,
      clientStatus: json['clientStatus'] as int,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_QuoteReservationModelToJson(
    _$_QuoteReservationModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quoteId', instance.quoteId);
  val['carId'] = instance.carId;
  val['clientId'] = instance.clientId;
  writeNotNull('driverId', instance.driverId);
  val['name'] = instance.name;
  writeNotNull('companyName', instance.companyName);
  val['phoneNumber'] = instance.phoneNumber;
  writeNotNull('daytimePhoneNumber', instance.daytimePhoneNumber);
  val['email'] = instance.email;
  val['homeAddress'] = instance.homeAddress;
  val['serviceType'] = instance.serviceType;
  val['dateTime'] = instance.dateTime;
  writeNotNull('numOfBags', instance.numOfBags);
  writeNotNull('numOfPass', instance.numOfPass);
  val['pickupInfo'] = instance.pickupInfo;
  val['destinationInfo'] = instance.destinationInfo;
  writeNotNull('additionalInfo', instance.additionalInfo);
  val['driverStatus'] = instance.driverStatus;
  val['clientStatus'] = instance.clientStatus;
  writeNotNull('price', instance.price);
  return val;
}
