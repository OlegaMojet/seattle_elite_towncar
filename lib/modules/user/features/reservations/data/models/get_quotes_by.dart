import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/get_quotes_by.dart';

part 'get_quotes_by.freezed.dart';
part 'get_quotes_by.g.dart';

@Freezed()
class GetQuotesByModel extends GetQuotesBy with _$GetQuotesByModel {
  factory GetQuotesByModel({required String by, required String? val}) =
      _GetQuotesByModel;

  factory GetQuotesByModel.fromJson(Map<String, dynamic> json) =>
      _$GetQuotesByModelFromJson(json);
}
