// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLocationModel _$UserLocationModelFromJson(Map<String, dynamic> json) {
  return _UserLocationModel.fromJson(json);
}

/// @nodoc
mixin _$UserLocationModel {
  String? get clientId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationModelCopyWith<UserLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationModelCopyWith<$Res> {
  factory $UserLocationModelCopyWith(
          UserLocationModel value, $Res Function(UserLocationModel) then) =
      _$UserLocationModelCopyWithImpl<$Res, UserLocationModel>;
  @useResult
  $Res call({String? clientId, String? driverId, LatLng? location});
}

/// @nodoc
class _$UserLocationModelCopyWithImpl<$Res, $Val extends UserLocationModel>
    implements $UserLocationModelCopyWith<$Res> {
  _$UserLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? driverId = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLocationModelCopyWith<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  factory _$$_UserLocationModelCopyWith(_$_UserLocationModel value,
          $Res Function(_$_UserLocationModel) then) =
      __$$_UserLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? clientId, String? driverId, LatLng? location});
}

/// @nodoc
class __$$_UserLocationModelCopyWithImpl<$Res>
    extends _$UserLocationModelCopyWithImpl<$Res, _$_UserLocationModel>
    implements _$$_UserLocationModelCopyWith<$Res> {
  __$$_UserLocationModelCopyWithImpl(
      _$_UserLocationModel _value, $Res Function(_$_UserLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? driverId = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_UserLocationModel(
      freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLocationModel implements _UserLocationModel {
  _$_UserLocationModel(this.clientId, this.driverId, this.location);

  factory _$_UserLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserLocationModelFromJson(json);

  @override
  final String? clientId;
  @override
  final String? driverId;
  @override
  final LatLng? location;

  @override
  String toString() {
    return 'UserLocationModel(clientId: $clientId, driverId: $driverId, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLocationModel &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, driverId, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLocationModelCopyWith<_$_UserLocationModel> get copyWith =>
      __$$_UserLocationModelCopyWithImpl<_$_UserLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLocationModelToJson(
      this,
    );
  }
}

abstract class _UserLocationModel implements UserLocationModel {
  factory _UserLocationModel(final String? clientId, final String? driverId,
      final LatLng? location) = _$_UserLocationModel;

  factory _UserLocationModel.fromJson(Map<String, dynamic> json) =
      _$_UserLocationModel.fromJson;

  @override
  String? get clientId;
  @override
  String? get driverId;
  @override
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationModelCopyWith<_$_UserLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
