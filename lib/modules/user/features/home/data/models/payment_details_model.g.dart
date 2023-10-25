// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDetailsModel _$$_PaymentDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentDetailsModel(
      paymentType: json['paymentType'] as int? ?? 0,
      cardNumber: json['cardNumber'] as String?,
      expDate: json['expDate'] as String?,
      cvv: json['cvv'] as int?,
      agree: json['agree'] as bool?,
      billingSame: json['billingSame'] as bool?,
    );

Map<String, dynamic> _$$_PaymentDetailsModelToJson(
        _$_PaymentDetailsModel instance) =>
    <String, dynamic>{
      'paymentType': instance.paymentType,
      'cardNumber': instance.cardNumber,
      'expDate': instance.expDate,
      'cvv': instance.cvv,
      'agree': instance.agree,
      'billingSame': instance.billingSame,
    };
