// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideDetailsModel _$RideDetailsModelFromJson(Map<String, dynamic> json) {
  return _RideDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RideDetailsModel {
  CarModel get vehicle => throw _privateConstructorUsedError;
  int get serviceType => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  int? get numOfBags => throw _privateConstructorUsedError;
  int? get numOfPass => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get pickupPlace => throw _privateConstructorUsedError;
  String? get pickupAddress => throw _privateConstructorUsedError;
  String? get pickupAirportNameOrCode => throw _privateConstructorUsedError;
  String? get pickupAirlineName => throw _privateConstructorUsedError;
  String? get pickupFlightNumber => throw _privateConstructorUsedError;
  int? get pickupType => throw _privateConstructorUsedError;
  int get destinationPlace => throw _privateConstructorUsedError;
  String? get destinationAddress => throw _privateConstructorUsedError;
  String? get destinationAirportNameOrCode =>
      throw _privateConstructorUsedError;
  String? get destinationAirlineName => throw _privateConstructorUsedError;
  String? get destinationFlightNumber => throw _privateConstructorUsedError;
  int? get destinationType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideDetailsModelCopyWith<RideDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideDetailsModelCopyWith<$Res> {
  factory $RideDetailsModelCopyWith(
          RideDetailsModel value, $Res Function(RideDetailsModel) then) =
      _$RideDetailsModelCopyWithImpl<$Res, RideDetailsModel>;
  @useResult
  $Res call(
      {CarModel vehicle,
      int serviceType,
      DateTime dateTime,
      int? numOfBags,
      int? numOfPass,
      String address,
      int pickupPlace,
      String? pickupAddress,
      String? pickupAirportNameOrCode,
      String? pickupAirlineName,
      String? pickupFlightNumber,
      int? pickupType,
      int destinationPlace,
      String? destinationAddress,
      String? destinationAirportNameOrCode,
      String? destinationAirlineName,
      String? destinationFlightNumber,
      int? destinationType});

  $CarModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$RideDetailsModelCopyWithImpl<$Res, $Val extends RideDetailsModel>
    implements $RideDetailsModelCopyWith<$Res> {
  _$RideDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
    Object? serviceType = null,
    Object? dateTime = null,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? address = null,
    Object? pickupPlace = null,
    Object? pickupAddress = freezed,
    Object? pickupAirportNameOrCode = freezed,
    Object? pickupAirlineName = freezed,
    Object? pickupFlightNumber = freezed,
    Object? pickupType = freezed,
    Object? destinationPlace = null,
    Object? destinationAddress = freezed,
    Object? destinationAirportNameOrCode = freezed,
    Object? destinationAirlineName = freezed,
    Object? destinationFlightNumber = freezed,
    Object? destinationType = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as CarModel,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pickupPlace: null == pickupPlace
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as int,
      pickupAddress: freezed == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAirportNameOrCode: freezed == pickupAirportNameOrCode
          ? _value.pickupAirportNameOrCode
          : pickupAirportNameOrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAirlineName: freezed == pickupAirlineName
          ? _value.pickupAirlineName
          : pickupAirlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupFlightNumber: freezed == pickupFlightNumber
          ? _value.pickupFlightNumber
          : pickupFlightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupType: freezed == pickupType
          ? _value.pickupType
          : pickupType // ignore: cast_nullable_to_non_nullable
              as int?,
      destinationPlace: null == destinationPlace
          ? _value.destinationPlace
          : destinationPlace // ignore: cast_nullable_to_non_nullable
              as int,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAirportNameOrCode: freezed == destinationAirportNameOrCode
          ? _value.destinationAirportNameOrCode
          : destinationAirportNameOrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAirlineName: freezed == destinationAirlineName
          ? _value.destinationAirlineName
          : destinationAirlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationFlightNumber: freezed == destinationFlightNumber
          ? _value.destinationFlightNumber
          : destinationFlightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationType: freezed == destinationType
          ? _value.destinationType
          : destinationType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarModelCopyWith<$Res> get vehicle {
    return $CarModelCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RideDetailsModelCopyWith<$Res>
    implements $RideDetailsModelCopyWith<$Res> {
  factory _$$_RideDetailsModelCopyWith(
          _$_RideDetailsModel value, $Res Function(_$_RideDetailsModel) then) =
      __$$_RideDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CarModel vehicle,
      int serviceType,
      DateTime dateTime,
      int? numOfBags,
      int? numOfPass,
      String address,
      int pickupPlace,
      String? pickupAddress,
      String? pickupAirportNameOrCode,
      String? pickupAirlineName,
      String? pickupFlightNumber,
      int? pickupType,
      int destinationPlace,
      String? destinationAddress,
      String? destinationAirportNameOrCode,
      String? destinationAirlineName,
      String? destinationFlightNumber,
      int? destinationType});

  @override
  $CarModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$_RideDetailsModelCopyWithImpl<$Res>
    extends _$RideDetailsModelCopyWithImpl<$Res, _$_RideDetailsModel>
    implements _$$_RideDetailsModelCopyWith<$Res> {
  __$$_RideDetailsModelCopyWithImpl(
      _$_RideDetailsModel _value, $Res Function(_$_RideDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
    Object? serviceType = null,
    Object? dateTime = null,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? address = null,
    Object? pickupPlace = null,
    Object? pickupAddress = freezed,
    Object? pickupAirportNameOrCode = freezed,
    Object? pickupAirlineName = freezed,
    Object? pickupFlightNumber = freezed,
    Object? pickupType = freezed,
    Object? destinationPlace = null,
    Object? destinationAddress = freezed,
    Object? destinationAirportNameOrCode = freezed,
    Object? destinationAirlineName = freezed,
    Object? destinationFlightNumber = freezed,
    Object? destinationType = freezed,
  }) {
    return _then(_$_RideDetailsModel(
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as CarModel,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pickupPlace: null == pickupPlace
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as int,
      pickupAddress: freezed == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAirportNameOrCode: freezed == pickupAirportNameOrCode
          ? _value.pickupAirportNameOrCode
          : pickupAirportNameOrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAirlineName: freezed == pickupAirlineName
          ? _value.pickupAirlineName
          : pickupAirlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupFlightNumber: freezed == pickupFlightNumber
          ? _value.pickupFlightNumber
          : pickupFlightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupType: freezed == pickupType
          ? _value.pickupType
          : pickupType // ignore: cast_nullable_to_non_nullable
              as int?,
      destinationPlace: null == destinationPlace
          ? _value.destinationPlace
          : destinationPlace // ignore: cast_nullable_to_non_nullable
              as int,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAirportNameOrCode: freezed == destinationAirportNameOrCode
          ? _value.destinationAirportNameOrCode
          : destinationAirportNameOrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAirlineName: freezed == destinationAirlineName
          ? _value.destinationAirlineName
          : destinationAirlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationFlightNumber: freezed == destinationFlightNumber
          ? _value.destinationFlightNumber
          : destinationFlightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationType: freezed == destinationType
          ? _value.destinationType
          : destinationType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideDetailsModel implements _RideDetailsModel {
  _$_RideDetailsModel(
      {required this.vehicle,
      required this.serviceType,
      required this.dateTime,
      this.numOfBags,
      this.numOfPass,
      required this.address,
      this.pickupPlace = 0,
      this.pickupAddress,
      this.pickupAirportNameOrCode,
      this.pickupAirlineName,
      this.pickupFlightNumber,
      this.pickupType,
      this.destinationPlace = 0,
      this.destinationAddress,
      this.destinationAirportNameOrCode,
      this.destinationAirlineName,
      this.destinationFlightNumber,
      this.destinationType});

  factory _$_RideDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RideDetailsModelFromJson(json);

  @override
  final CarModel vehicle;
  @override
  final int serviceType;
  @override
  final DateTime dateTime;
  @override
  final int? numOfBags;
  @override
  final int? numOfPass;
  @override
  final String address;
  @override
  @JsonKey()
  final int pickupPlace;
  @override
  final String? pickupAddress;
  @override
  final String? pickupAirportNameOrCode;
  @override
  final String? pickupAirlineName;
  @override
  final String? pickupFlightNumber;
  @override
  final int? pickupType;
  @override
  @JsonKey()
  final int destinationPlace;
  @override
  final String? destinationAddress;
  @override
  final String? destinationAirportNameOrCode;
  @override
  final String? destinationAirlineName;
  @override
  final String? destinationFlightNumber;
  @override
  final int? destinationType;

  @override
  String toString() {
    return 'RideDetailsModel(vehicle: $vehicle, serviceType: $serviceType, dateTime: $dateTime, numOfBags: $numOfBags, numOfPass: $numOfPass, address: $address, pickupPlace: $pickupPlace, pickupAddress: $pickupAddress, pickupAirportNameOrCode: $pickupAirportNameOrCode, pickupAirlineName: $pickupAirlineName, pickupFlightNumber: $pickupFlightNumber, pickupType: $pickupType, destinationPlace: $destinationPlace, destinationAddress: $destinationAddress, destinationAirportNameOrCode: $destinationAirportNameOrCode, destinationAirlineName: $destinationAirlineName, destinationFlightNumber: $destinationFlightNumber, destinationType: $destinationType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideDetailsModel &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.numOfBags, numOfBags) ||
                other.numOfBags == numOfBags) &&
            (identical(other.numOfPass, numOfPass) ||
                other.numOfPass == numOfPass) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pickupPlace, pickupPlace) ||
                other.pickupPlace == pickupPlace) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(
                    other.pickupAirportNameOrCode, pickupAirportNameOrCode) ||
                other.pickupAirportNameOrCode == pickupAirportNameOrCode) &&
            (identical(other.pickupAirlineName, pickupAirlineName) ||
                other.pickupAirlineName == pickupAirlineName) &&
            (identical(other.pickupFlightNumber, pickupFlightNumber) ||
                other.pickupFlightNumber == pickupFlightNumber) &&
            (identical(other.pickupType, pickupType) ||
                other.pickupType == pickupType) &&
            (identical(other.destinationPlace, destinationPlace) ||
                other.destinationPlace == destinationPlace) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.destinationAirportNameOrCode,
                    destinationAirportNameOrCode) ||
                other.destinationAirportNameOrCode ==
                    destinationAirportNameOrCode) &&
            (identical(other.destinationAirlineName, destinationAirlineName) ||
                other.destinationAirlineName == destinationAirlineName) &&
            (identical(
                    other.destinationFlightNumber, destinationFlightNumber) ||
                other.destinationFlightNumber == destinationFlightNumber) &&
            (identical(other.destinationType, destinationType) ||
                other.destinationType == destinationType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vehicle,
      serviceType,
      dateTime,
      numOfBags,
      numOfPass,
      address,
      pickupPlace,
      pickupAddress,
      pickupAirportNameOrCode,
      pickupAirlineName,
      pickupFlightNumber,
      pickupType,
      destinationPlace,
      destinationAddress,
      destinationAirportNameOrCode,
      destinationAirlineName,
      destinationFlightNumber,
      destinationType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RideDetailsModelCopyWith<_$_RideDetailsModel> get copyWith =>
      __$$_RideDetailsModelCopyWithImpl<_$_RideDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideDetailsModelToJson(
      this,
    );
  }
}

abstract class _RideDetailsModel implements RideDetailsModel {
  factory _RideDetailsModel(
      {required final CarModel vehicle,
      required final int serviceType,
      required final DateTime dateTime,
      final int? numOfBags,
      final int? numOfPass,
      required final String address,
      final int pickupPlace,
      final String? pickupAddress,
      final String? pickupAirportNameOrCode,
      final String? pickupAirlineName,
      final String? pickupFlightNumber,
      final int? pickupType,
      final int destinationPlace,
      final String? destinationAddress,
      final String? destinationAirportNameOrCode,
      final String? destinationAirlineName,
      final String? destinationFlightNumber,
      final int? destinationType}) = _$_RideDetailsModel;

  factory _RideDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_RideDetailsModel.fromJson;

  @override
  CarModel get vehicle;
  @override
  int get serviceType;
  @override
  DateTime get dateTime;
  @override
  int? get numOfBags;
  @override
  int? get numOfPass;
  @override
  String get address;
  @override
  int get pickupPlace;
  @override
  String? get pickupAddress;
  @override
  String? get pickupAirportNameOrCode;
  @override
  String? get pickupAirlineName;
  @override
  String? get pickupFlightNumber;
  @override
  int? get pickupType;
  @override
  int get destinationPlace;
  @override
  String? get destinationAddress;
  @override
  String? get destinationAirportNameOrCode;
  @override
  String? get destinationAirlineName;
  @override
  String? get destinationFlightNumber;
  @override
  int? get destinationType;
  @override
  @JsonKey(ignore: true)
  _$$_RideDetailsModelCopyWith<_$_RideDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
