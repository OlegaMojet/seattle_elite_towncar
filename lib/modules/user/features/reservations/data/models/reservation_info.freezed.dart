// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationInfoModel _$ReservationInfoModelFromJson(Map<String, dynamic> json) {
  return _ReservationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationInfoModel {
  int get quoteId => throw _privateConstructorUsedError;
  ReservationStatus get status => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  PassengerInfoModel get passengerInfo => throw _privateConstructorUsedError;
  RideDetailsModel get rideDetails => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  PaymentDetailsModel? get paymentDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationInfoModelCopyWith<ReservationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationInfoModelCopyWith<$Res> {
  factory $ReservationInfoModelCopyWith(ReservationInfoModel value,
          $Res Function(ReservationInfoModel) then) =
      _$ReservationInfoModelCopyWithImpl<$Res, ReservationInfoModel>;
  @useResult
  $Res call(
      {int quoteId,
      ReservationStatus status,
      double? price,
      PassengerInfoModel passengerInfo,
      RideDetailsModel rideDetails,
      String? additionalInfo,
      PaymentDetailsModel? paymentDetails});

  $PassengerInfoModelCopyWith<$Res> get passengerInfo;
  $RideDetailsModelCopyWith<$Res> get rideDetails;
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$ReservationInfoModelCopyWithImpl<$Res,
        $Val extends ReservationInfoModel>
    implements $ReservationInfoModelCopyWith<$Res> {
  _$ReservationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteId = null,
    Object? status = null,
    Object? price = freezed,
    Object? passengerInfo = null,
    Object? rideDetails = null,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      quoteId: null == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      passengerInfo: null == passengerInfo
          ? _value.passengerInfo
          : passengerInfo // ignore: cast_nullable_to_non_nullable
              as PassengerInfoModel,
      rideDetails: null == rideDetails
          ? _value.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetailsModel,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassengerInfoModelCopyWith<$Res> get passengerInfo {
    return $PassengerInfoModelCopyWith<$Res>(_value.passengerInfo, (value) {
      return _then(_value.copyWith(passengerInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RideDetailsModelCopyWith<$Res> get rideDetails {
    return $RideDetailsModelCopyWith<$Res>(_value.rideDetails, (value) {
      return _then(_value.copyWith(rideDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentDetailsModelCopyWith<$Res>(_value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReservationInfoModelCopyWith<$Res>
    implements $ReservationInfoModelCopyWith<$Res> {
  factory _$$_ReservationInfoModelCopyWith(_$_ReservationInfoModel value,
          $Res Function(_$_ReservationInfoModel) then) =
      __$$_ReservationInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int quoteId,
      ReservationStatus status,
      double? price,
      PassengerInfoModel passengerInfo,
      RideDetailsModel rideDetails,
      String? additionalInfo,
      PaymentDetailsModel? paymentDetails});

  @override
  $PassengerInfoModelCopyWith<$Res> get passengerInfo;
  @override
  $RideDetailsModelCopyWith<$Res> get rideDetails;
  @override
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$$_ReservationInfoModelCopyWithImpl<$Res>
    extends _$ReservationInfoModelCopyWithImpl<$Res, _$_ReservationInfoModel>
    implements _$$_ReservationInfoModelCopyWith<$Res> {
  __$$_ReservationInfoModelCopyWithImpl(_$_ReservationInfoModel _value,
      $Res Function(_$_ReservationInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteId = null,
    Object? status = null,
    Object? price = freezed,
    Object? passengerInfo = null,
    Object? rideDetails = null,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_$_ReservationInfoModel(
      quoteId: null == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      passengerInfo: null == passengerInfo
          ? _value.passengerInfo
          : passengerInfo // ignore: cast_nullable_to_non_nullable
              as PassengerInfoModel,
      rideDetails: null == rideDetails
          ? _value.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetailsModel,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationInfoModel implements _ReservationInfoModel {
  _$_ReservationInfoModel(
      {required this.quoteId,
      required this.status,
      this.price,
      required this.passengerInfo,
      required this.rideDetails,
      this.additionalInfo,
      this.paymentDetails});

  factory _$_ReservationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationInfoModelFromJson(json);

  @override
  final int quoteId;
  @override
  final ReservationStatus status;
  @override
  final double? price;
  @override
  final PassengerInfoModel passengerInfo;
  @override
  final RideDetailsModel rideDetails;
  @override
  final String? additionalInfo;
  @override
  final PaymentDetailsModel? paymentDetails;

  @override
  String toString() {
    return 'ReservationInfoModel(quoteId: $quoteId, status: $status, price: $price, passengerInfo: $passengerInfo, rideDetails: $rideDetails, additionalInfo: $additionalInfo, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReservationInfoModel &&
            (identical(other.quoteId, quoteId) || other.quoteId == quoteId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.passengerInfo, passengerInfo) ||
                other.passengerInfo == passengerInfo) &&
            (identical(other.rideDetails, rideDetails) ||
                other.rideDetails == rideDetails) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.paymentDetails, paymentDetails) ||
                other.paymentDetails == paymentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quoteId, status, price,
      passengerInfo, rideDetails, additionalInfo, paymentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationInfoModelCopyWith<_$_ReservationInfoModel> get copyWith =>
      __$$_ReservationInfoModelCopyWithImpl<_$_ReservationInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationInfoModelToJson(
      this,
    );
  }
}

abstract class _ReservationInfoModel implements ReservationInfoModel {
  factory _ReservationInfoModel(
      {required final int quoteId,
      required final ReservationStatus status,
      final double? price,
      required final PassengerInfoModel passengerInfo,
      required final RideDetailsModel rideDetails,
      final String? additionalInfo,
      final PaymentDetailsModel? paymentDetails}) = _$_ReservationInfoModel;

  factory _ReservationInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ReservationInfoModel.fromJson;

  @override
  int get quoteId;
  @override
  ReservationStatus get status;
  @override
  double? get price;
  @override
  PassengerInfoModel get passengerInfo;
  @override
  RideDetailsModel get rideDetails;
  @override
  String? get additionalInfo;
  @override
  PaymentDetailsModel? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationInfoModelCopyWith<_$_ReservationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
