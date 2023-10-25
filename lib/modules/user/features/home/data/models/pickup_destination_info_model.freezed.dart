// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_destination_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PickupDestinationInfoModel _$PickupDestinationInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PickupDestinationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PickupDestinationInfoModel {
  int get addressType => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get airportName => throw _privateConstructorUsedError;
  String? get airlineName => throw _privateConstructorUsedError;
  String? get flightNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupDestinationInfoModelCopyWith<PickupDestinationInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupDestinationInfoModelCopyWith<$Res> {
  factory $PickupDestinationInfoModelCopyWith(PickupDestinationInfoModel value,
          $Res Function(PickupDestinationInfoModel) then) =
      _$PickupDestinationInfoModelCopyWithImpl<$Res,
          PickupDestinationInfoModel>;
  @useResult
  $Res call(
      {int addressType,
      String? address,
      String? airportName,
      String? airlineName,
      String? flightNumber});
}

/// @nodoc
class _$PickupDestinationInfoModelCopyWithImpl<$Res,
        $Val extends PickupDestinationInfoModel>
    implements $PickupDestinationInfoModelCopyWith<$Res> {
  _$PickupDestinationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = null,
    Object? address = freezed,
    Object? airportName = freezed,
    Object? airlineName = freezed,
    Object? flightNumber = freezed,
  }) {
    return _then(_value.copyWith(
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      airportName: freezed == airportName
          ? _value.airportName
          : airportName // ignore: cast_nullable_to_non_nullable
              as String?,
      airlineName: freezed == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickupDestinationInfoModelCopyWith<$Res>
    implements $PickupDestinationInfoModelCopyWith<$Res> {
  factory _$$_PickupDestinationInfoModelCopyWith(
          _$_PickupDestinationInfoModel value,
          $Res Function(_$_PickupDestinationInfoModel) then) =
      __$$_PickupDestinationInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int addressType,
      String? address,
      String? airportName,
      String? airlineName,
      String? flightNumber});
}

/// @nodoc
class __$$_PickupDestinationInfoModelCopyWithImpl<$Res>
    extends _$PickupDestinationInfoModelCopyWithImpl<$Res,
        _$_PickupDestinationInfoModel>
    implements _$$_PickupDestinationInfoModelCopyWith<$Res> {
  __$$_PickupDestinationInfoModelCopyWithImpl(
      _$_PickupDestinationInfoModel _value,
      $Res Function(_$_PickupDestinationInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = null,
    Object? address = freezed,
    Object? airportName = freezed,
    Object? airlineName = freezed,
    Object? flightNumber = freezed,
  }) {
    return _then(_$_PickupDestinationInfoModel(
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      airportName: freezed == airportName
          ? _value.airportName
          : airportName // ignore: cast_nullable_to_non_nullable
              as String?,
      airlineName: freezed == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupDestinationInfoModel implements _PickupDestinationInfoModel {
  _$_PickupDestinationInfoModel(
      {required this.addressType,
      this.address,
      this.airportName,
      this.airlineName,
      this.flightNumber});

  factory _$_PickupDestinationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PickupDestinationInfoModelFromJson(json);

  @override
  final int addressType;
  @override
  final String? address;
  @override
  final String? airportName;
  @override
  final String? airlineName;
  @override
  final String? flightNumber;

  @override
  String toString() {
    return 'PickupDestinationInfoModel(addressType: $addressType, address: $address, airportName: $airportName, airlineName: $airlineName, flightNumber: $flightNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickupDestinationInfoModel &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.airportName, airportName) ||
                other.airportName == airportName) &&
            (identical(other.airlineName, airlineName) ||
                other.airlineName == airlineName) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressType, address,
      airportName, airlineName, flightNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickupDestinationInfoModelCopyWith<_$_PickupDestinationInfoModel>
      get copyWith => __$$_PickupDestinationInfoModelCopyWithImpl<
          _$_PickupDestinationInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupDestinationInfoModelToJson(
      this,
    );
  }
}

abstract class _PickupDestinationInfoModel
    implements PickupDestinationInfoModel {
  factory _PickupDestinationInfoModel(
      {required final int addressType,
      final String? address,
      final String? airportName,
      final String? airlineName,
      final String? flightNumber}) = _$_PickupDestinationInfoModel;

  factory _PickupDestinationInfoModel.fromJson(Map<String, dynamic> json) =
      _$_PickupDestinationInfoModel.fromJson;

  @override
  int get addressType;
  @override
  String? get address;
  @override
  String? get airportName;
  @override
  String? get airlineName;
  @override
  String? get flightNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PickupDestinationInfoModelCopyWith<_$_PickupDestinationInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
