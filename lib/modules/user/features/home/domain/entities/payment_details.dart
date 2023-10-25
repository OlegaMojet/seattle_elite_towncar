class PaymentDetails {
  final int paymentType;
  final String? cardNumber;
  final String? expDate;
  final int? cvv;
  final bool? agree;
  final bool? billingSame;

  PaymentDetails({
    this.paymentType = 0,
    this.cardNumber,
    this.expDate,
    this.cvv,
    this.agree,
    this.billingSame,
  });
}
