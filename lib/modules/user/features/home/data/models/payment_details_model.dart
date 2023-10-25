import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';

part 'payment_details_model.freezed.dart';
part 'payment_details_model.g.dart';

@freezed
class PaymentDetailsModel extends PaymentDetails with _$PaymentDetailsModel {
   factory PaymentDetailsModel({
    @Default(0) int paymentType,
    String? cardNumber,
    String? expDate,
    int? cvv,
    bool? agree,
    bool? billingSame,
   }) = _PaymentDetailsModel;


  factory PaymentDetailsModel.fromJson(Map<String, dynamic> json) => _$PaymentDetailsModelFromJson(json);
}