// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_status_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangeStatusQuoteModel _$$_ChangeStatusQuoteModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChangeStatusQuoteModel(
      quoteId: json['quoteId'] as int,
      clientStatus: json['clientStatus'] as int?,
      driverStatus: json['driverStatus'] as int?,
    );

Map<String, dynamic> _$$_ChangeStatusQuoteModelToJson(
    _$_ChangeStatusQuoteModel instance) {
  final val = <String, dynamic>{
    'quoteId': instance.quoteId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientStatus', instance.clientStatus);
  writeNotNull('driverStatus', instance.driverStatus);
  return val;
}
