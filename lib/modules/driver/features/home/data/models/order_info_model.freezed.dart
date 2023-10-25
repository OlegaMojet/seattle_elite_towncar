// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderInfoModel {
  int get id => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  bool get self => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  PassengerInfoModel get passengerInfo => throw _privateConstructorUsedError;
  RideDetailsModel get rideDetails => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  PaymentDetailsModel? get paymentDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderInfoModelCopyWith<OrderInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoModelCopyWith<$Res> {
  factory $OrderInfoModelCopyWith(
          OrderInfoModel value, $Res Function(OrderInfoModel) then) =
      _$OrderInfoModelCopyWithImpl<$Res, OrderInfoModel>;
  @useResult
  $Res call(
      {int id,
      OrderStatus orderStatus,
      bool self,
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
class _$OrderInfoModelCopyWithImpl<$Res, $Val extends OrderInfoModel>
    implements $OrderInfoModelCopyWith<$Res> {
  _$OrderInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderStatus = null,
    Object? self = null,
    Object? price = freezed,
    Object? passengerInfo = null,
    Object? rideDetails = null,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_OrderInfoModelCopyWith<$Res>
    implements $OrderInfoModelCopyWith<$Res> {
  factory _$$_OrderInfoModelCopyWith(
          _$_OrderInfoModel value, $Res Function(_$_OrderInfoModel) then) =
      __$$_OrderInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      OrderStatus orderStatus,
      bool self,
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
class __$$_OrderInfoModelCopyWithImpl<$Res>
    extends _$OrderInfoModelCopyWithImpl<$Res, _$_OrderInfoModel>
    implements _$$_OrderInfoModelCopyWith<$Res> {
  __$$_OrderInfoModelCopyWithImpl(
      _$_OrderInfoModel _value, $Res Function(_$_OrderInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderStatus = null,
    Object? self = null,
    Object? price = freezed,
    Object? passengerInfo = null,
    Object? rideDetails = null,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_$_OrderInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_OrderInfoModel implements _OrderInfoModel {
  _$_OrderInfoModel(
      {required this.id,
      required this.orderStatus,
      this.self = true,
      this.price,
      required this.passengerInfo,
      required this.rideDetails,
      this.additionalInfo,
      this.paymentDetails});

  @override
  final int id;
  @override
  final OrderStatus orderStatus;
  @override
  @JsonKey()
  final bool self;
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
    return 'OrderInfoModel(id: $id, orderStatus: $orderStatus, self: $self, price: $price, passengerInfo: $passengerInfo, rideDetails: $rideDetails, additionalInfo: $additionalInfo, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.self, self) || other.self == self) &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, orderStatus, self, price,
      passengerInfo, rideDetails, additionalInfo, paymentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderInfoModelCopyWith<_$_OrderInfoModel> get copyWith =>
      __$$_OrderInfoModelCopyWithImpl<_$_OrderInfoModel>(this, _$identity);
}

abstract class _OrderInfoModel implements OrderInfoModel {
  factory _OrderInfoModel(
      {required final int id,
      required final OrderStatus orderStatus,
      final bool self,
      final double? price,
      required final PassengerInfoModel passengerInfo,
      required final RideDetailsModel rideDetails,
      final String? additionalInfo,
      final PaymentDetailsModel? paymentDetails}) = _$_OrderInfoModel;

  @override
  int get id;
  @override
  OrderStatus get orderStatus;
  @override
  bool get self;
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
  _$$_OrderInfoModelCopyWith<_$_OrderInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
