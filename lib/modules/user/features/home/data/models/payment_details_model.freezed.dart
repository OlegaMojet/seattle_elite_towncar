// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDetailsModel _$PaymentDetailsModelFromJson(Map<String, dynamic> json) {
  return _PaymentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailsModel {
  int get paymentType => throw _privateConstructorUsedError;
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get expDate => throw _privateConstructorUsedError;
  int? get cvv => throw _privateConstructorUsedError;
  bool? get agree => throw _privateConstructorUsedError;
  bool? get billingSame => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsModelCopyWith<PaymentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsModelCopyWith<$Res> {
  factory $PaymentDetailsModelCopyWith(
          PaymentDetailsModel value, $Res Function(PaymentDetailsModel) then) =
      _$PaymentDetailsModelCopyWithImpl<$Res, PaymentDetailsModel>;
  @useResult
  $Res call(
      {int paymentType,
      String? cardNumber,
      String? expDate,
      int? cvv,
      bool? agree,
      bool? billingSame});
}

/// @nodoc
class _$PaymentDetailsModelCopyWithImpl<$Res, $Val extends PaymentDetailsModel>
    implements $PaymentDetailsModelCopyWith<$Res> {
  _$PaymentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? cardNumber = freezed,
    Object? expDate = freezed,
    Object? cvv = freezed,
    Object? agree = freezed,
    Object? billingSame = freezed,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: freezed == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      agree: freezed == agree
          ? _value.agree
          : agree // ignore: cast_nullable_to_non_nullable
              as bool?,
      billingSame: freezed == billingSame
          ? _value.billingSame
          : billingSame // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDetailsModelCopyWith<$Res>
    implements $PaymentDetailsModelCopyWith<$Res> {
  factory _$$_PaymentDetailsModelCopyWith(_$_PaymentDetailsModel value,
          $Res Function(_$_PaymentDetailsModel) then) =
      __$$_PaymentDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int paymentType,
      String? cardNumber,
      String? expDate,
      int? cvv,
      bool? agree,
      bool? billingSame});
}

/// @nodoc
class __$$_PaymentDetailsModelCopyWithImpl<$Res>
    extends _$PaymentDetailsModelCopyWithImpl<$Res, _$_PaymentDetailsModel>
    implements _$$_PaymentDetailsModelCopyWith<$Res> {
  __$$_PaymentDetailsModelCopyWithImpl(_$_PaymentDetailsModel _value,
      $Res Function(_$_PaymentDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? cardNumber = freezed,
    Object? expDate = freezed,
    Object? cvv = freezed,
    Object? agree = freezed,
    Object? billingSame = freezed,
  }) {
    return _then(_$_PaymentDetailsModel(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: freezed == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      agree: freezed == agree
          ? _value.agree
          : agree // ignore: cast_nullable_to_non_nullable
              as bool?,
      billingSame: freezed == billingSame
          ? _value.billingSame
          : billingSame // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDetailsModel implements _PaymentDetailsModel {
  _$_PaymentDetailsModel(
      {this.paymentType = 0,
      this.cardNumber,
      this.expDate,
      this.cvv,
      this.agree,
      this.billingSame});

  factory _$_PaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDetailsModelFromJson(json);

  @override
  @JsonKey()
  final int paymentType;
  @override
  final String? cardNumber;
  @override
  final String? expDate;
  @override
  final int? cvv;
  @override
  final bool? agree;
  @override
  final bool? billingSame;

  @override
  String toString() {
    return 'PaymentDetailsModel(paymentType: $paymentType, cardNumber: $cardNumber, expDate: $expDate, cvv: $cvv, agree: $agree, billingSame: $billingSame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDetailsModel &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expDate, expDate) || other.expDate == expDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.agree, agree) || other.agree == agree) &&
            (identical(other.billingSame, billingSame) ||
                other.billingSame == billingSame));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentType, cardNumber, expDate, cvv, agree, billingSame);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDetailsModelCopyWith<_$_PaymentDetailsModel> get copyWith =>
      __$$_PaymentDetailsModelCopyWithImpl<_$_PaymentDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDetailsModelToJson(
      this,
    );
  }
}

abstract class _PaymentDetailsModel implements PaymentDetailsModel {
  factory _PaymentDetailsModel(
      {final int paymentType,
      final String? cardNumber,
      final String? expDate,
      final int? cvv,
      final bool? agree,
      final bool? billingSame}) = _$_PaymentDetailsModel;

  factory _PaymentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetailsModel.fromJson;

  @override
  int get paymentType;
  @override
  String? get cardNumber;
  @override
  String? get expDate;
  @override
  int? get cvv;
  @override
  bool? get agree;
  @override
  bool? get billingSame;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDetailsModelCopyWith<_$_PaymentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
