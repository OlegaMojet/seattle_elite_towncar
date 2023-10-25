// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormState {
  bool get isReservation => throw _privateConstructorUsedError;
  PassengerInfo? get passengerInfo => throw _privateConstructorUsedError;
  RideDetails? get rideDetails => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  PaymentDetails? get paymentDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormStateCopyWith<FormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res, FormState>;
  @useResult
  $Res call(
      {bool isReservation,
      PassengerInfo? passengerInfo,
      RideDetails? rideDetails,
      String? additionalInfo,
      PaymentDetails? paymentDetails});
}

/// @nodoc
class _$FormStateCopyWithImpl<$Res, $Val extends FormState>
    implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReservation = null,
    Object? passengerInfo = freezed,
    Object? rideDetails = freezed,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isReservation: null == isReservation
          ? _value.isReservation
          : isReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      passengerInfo: freezed == passengerInfo
          ? _value.passengerInfo
          : passengerInfo // ignore: cast_nullable_to_non_nullable
              as PassengerInfo?,
      rideDetails: freezed == rideDetails
          ? _value.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetails?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormStateCopyWith<$Res> implements $FormStateCopyWith<$Res> {
  factory _$$_FormStateCopyWith(
          _$_FormState value, $Res Function(_$_FormState) then) =
      __$$_FormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isReservation,
      PassengerInfo? passengerInfo,
      RideDetails? rideDetails,
      String? additionalInfo,
      PaymentDetails? paymentDetails});
}

/// @nodoc
class __$$_FormStateCopyWithImpl<$Res>
    extends _$FormStateCopyWithImpl<$Res, _$_FormState>
    implements _$$_FormStateCopyWith<$Res> {
  __$$_FormStateCopyWithImpl(
      _$_FormState _value, $Res Function(_$_FormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReservation = null,
    Object? passengerInfo = freezed,
    Object? rideDetails = freezed,
    Object? additionalInfo = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_$_FormState(
      isReservation: null == isReservation
          ? _value.isReservation
          : isReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      passengerInfo: freezed == passengerInfo
          ? _value.passengerInfo
          : passengerInfo // ignore: cast_nullable_to_non_nullable
              as PassengerInfo?,
      rideDetails: freezed == rideDetails
          ? _value.rideDetails
          : rideDetails // ignore: cast_nullable_to_non_nullable
              as RideDetails?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetails?,
    ));
  }
}

/// @nodoc

class _$_FormState implements _FormState {
  const _$_FormState(
      {this.isReservation = false,
      this.passengerInfo,
      this.rideDetails,
      this.additionalInfo,
      this.paymentDetails});

  @override
  @JsonKey()
  final bool isReservation;
  @override
  final PassengerInfo? passengerInfo;
  @override
  final RideDetails? rideDetails;
  @override
  final String? additionalInfo;
  @override
  final PaymentDetails? paymentDetails;

  @override
  String toString() {
    return 'FormState(isReservation: $isReservation, passengerInfo: $passengerInfo, rideDetails: $rideDetails, additionalInfo: $additionalInfo, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormState &&
            (identical(other.isReservation, isReservation) ||
                other.isReservation == isReservation) &&
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
  int get hashCode => Object.hash(runtimeType, isReservation, passengerInfo,
      rideDetails, additionalInfo, paymentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormStateCopyWith<_$_FormState> get copyWith =>
      __$$_FormStateCopyWithImpl<_$_FormState>(this, _$identity);
}

abstract class _FormState implements FormState {
  const factory _FormState(
      {final bool isReservation,
      final PassengerInfo? passengerInfo,
      final RideDetails? rideDetails,
      final String? additionalInfo,
      final PaymentDetails? paymentDetails}) = _$_FormState;

  @override
  bool get isReservation;
  @override
  PassengerInfo? get passengerInfo;
  @override
  RideDetails? get rideDetails;
  @override
  String? get additionalInfo;
  @override
  PaymentDetails? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$_FormStateCopyWith<_$_FormState> get copyWith =>
      throw _privateConstructorUsedError;
}
