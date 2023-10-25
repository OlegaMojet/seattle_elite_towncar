// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationInfoModel _$$_ReservationInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReservationInfoModel(
      quoteId: json['quoteId'] as int,
      status: $enumDecode(_$ReservationStatusEnumMap, json['status']),
      price: (json['price'] as num?)?.toDouble(),
      passengerInfo: PassengerInfoModel.fromJson(
          json['passengerInfo'] as Map<String, dynamic>),
      rideDetails: RideDetailsModel.fromJson(
          json['rideDetails'] as Map<String, dynamic>),
      additionalInfo: json['additionalInfo'] as String?,
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetailsModel.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReservationInfoModelToJson(
        _$_ReservationInfoModel instance) =>
    <String, dynamic>{
      'quoteId': instance.quoteId,
      'status': _$ReservationStatusEnumMap[instance.status]!,
      'price': instance.price,
      'passengerInfo': instance.passengerInfo,
      'rideDetails': instance.rideDetails,
      'additionalInfo': instance.additionalInfo,
      'paymentDetails': instance.paymentDetails,
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.active: 'active',
  ReservationStatus.reserved: 'reserved',
  ReservationStatus.done: 'done',
  ReservationStatus.canceled: 'canceled',
};
