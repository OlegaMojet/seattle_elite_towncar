// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  int? get carId => throw _privateConstructorUsedError;
  String? get carName => throw _privateConstructorUsedError;
  int? get numOfBags => throw _privateConstructorUsedError;
  int? get numOfPass => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {int? carId,
      String? carName,
      int? numOfBags,
      int? numOfPass,
      String? image,
      int? vehicleType});
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? carName = freezed,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carName: freezed == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarModelCopyWith<$Res> implements $CarModelCopyWith<$Res> {
  factory _$$_CarModelCopyWith(
          _$_CarModel value, $Res Function(_$_CarModel) then) =
      __$$_CarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? carId,
      String? carName,
      int? numOfBags,
      int? numOfPass,
      String? image,
      int? vehicleType});
}

/// @nodoc
class __$$_CarModelCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$_CarModel>
    implements _$$_CarModelCopyWith<$Res> {
  __$$_CarModelCopyWithImpl(
      _$_CarModel _value, $Res Function(_$_CarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? carName = freezed,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? image = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$_CarModel(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carName: freezed == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_CarModel implements _CarModel {
  _$_CarModel(
      {this.carId,
      this.carName,
      this.numOfBags,
      this.numOfPass,
      this.image,
      this.vehicleType});

  factory _$_CarModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarModelFromJson(json);

  @override
  final int? carId;
  @override
  final String? carName;
  @override
  final int? numOfBags;
  @override
  final int? numOfPass;
  @override
  final String? image;
  @override
  final int? vehicleType;

  @override
  String toString() {
    return 'CarModel(carId: $carId, carName: $carName, numOfBags: $numOfBags, numOfPass: $numOfPass, image: $image, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarModel &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.numOfBags, numOfBags) ||
                other.numOfBags == numOfBags) &&
            (identical(other.numOfPass, numOfPass) ||
                other.numOfPass == numOfPass) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, carId, carName, numOfBags, numOfPass, image, vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      __$$_CarModelCopyWithImpl<_$_CarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarModelToJson(
      this,
    );
  }
}

abstract class _CarModel implements CarModel {
  factory _CarModel(
      {final int? carId,
      final String? carName,
      final int? numOfBags,
      final int? numOfPass,
      final String? image,
      final int? vehicleType}) = _$_CarModel;

  factory _CarModel.fromJson(Map<String, dynamic> json) = _$_CarModel.fromJson;

  @override
  int? get carId;
  @override
  String? get carName;
  @override
  int? get numOfBags;
  @override
  int? get numOfPass;
  @override
  String? get image;
  @override
  int? get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
