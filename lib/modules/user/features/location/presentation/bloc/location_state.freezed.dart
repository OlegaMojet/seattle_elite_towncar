// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLocationState {
  ReservationInfo? get info => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationStateCopyWith<UserLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationStateCopyWith<$Res> {
  factory $UserLocationStateCopyWith(
          UserLocationState value, $Res Function(UserLocationState) then) =
      _$UserLocationStateCopyWithImpl<$Res, UserLocationState>;
  @useResult
  $Res call({ReservationInfo? info, LatLng? location});
}

/// @nodoc
class _$UserLocationStateCopyWithImpl<$Res, $Val extends UserLocationState>
    implements $UserLocationStateCopyWith<$Res> {
  _$UserLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ReservationInfo?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLocationScreenStateCopyWith<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  factory _$$_UserLocationScreenStateCopyWith(_$_UserLocationScreenState value,
          $Res Function(_$_UserLocationScreenState) then) =
      __$$_UserLocationScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReservationInfo? info, LatLng? location});
}

/// @nodoc
class __$$_UserLocationScreenStateCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res, _$_UserLocationScreenState>
    implements _$$_UserLocationScreenStateCopyWith<$Res> {
  __$$_UserLocationScreenStateCopyWithImpl(_$_UserLocationScreenState _value,
      $Res Function(_$_UserLocationScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_UserLocationScreenState(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ReservationInfo?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$_UserLocationScreenState implements _UserLocationScreenState {
  _$_UserLocationScreenState({this.info, this.location});

  @override
  final ReservationInfo? info;
  @override
  final LatLng? location;

  @override
  String toString() {
    return 'UserLocationState(info: $info, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLocationScreenState &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLocationScreenStateCopyWith<_$_UserLocationScreenState>
      get copyWith =>
          __$$_UserLocationScreenStateCopyWithImpl<_$_UserLocationScreenState>(
              this, _$identity);
}

abstract class _UserLocationScreenState implements UserLocationState {
  factory _UserLocationScreenState(
      {final ReservationInfo? info,
      final LatLng? location}) = _$_UserLocationScreenState;

  @override
  ReservationInfo? get info;
  @override
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationScreenStateCopyWith<_$_UserLocationScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
