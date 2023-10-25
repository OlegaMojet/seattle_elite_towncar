import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_status_quote.freezed.dart';
part 'change_status_quote.g.dart';

@Freezed(copyWith: false)
abstract class ChangeStatusQuoteModel with _$ChangeStatusQuoteModel {
  @JsonSerializable(includeIfNull: false)
  factory ChangeStatusQuoteModel(
      {required int quoteId,
      int? clientStatus,
      int? driverStatus}) = _ChangeStatusQuoteModel;
  factory ChangeStatusQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeStatusQuoteModelFromJson(json);
}
