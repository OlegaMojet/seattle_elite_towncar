// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchedDriverProfileState {
  DriverProfile get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchedDriverProfileStateCopyWith<FetchedDriverProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedDriverProfileStateCopyWith<$Res> {
  factory $FetchedDriverProfileStateCopyWith(FetchedDriverProfileState value,
          $Res Function(FetchedDriverProfileState) then) =
      _$FetchedDriverProfileStateCopyWithImpl<$Res, FetchedDriverProfileState>;
  @useResult
  $Res call({DriverProfile profile});
}

/// @nodoc
class _$FetchedDriverProfileStateCopyWithImpl<$Res,
        $Val extends FetchedDriverProfileState>
    implements $FetchedDriverProfileStateCopyWith<$Res> {
  _$FetchedDriverProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DriverProfile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchedDriverProfileStateCopyWith<$Res>
    implements $FetchedDriverProfileStateCopyWith<$Res> {
  factory _$$_FetchedDriverProfileStateCopyWith(
          _$_FetchedDriverProfileState value,
          $Res Function(_$_FetchedDriverProfileState) then) =
      __$$_FetchedDriverProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DriverProfile profile});
}

/// @nodoc
class __$$_FetchedDriverProfileStateCopyWithImpl<$Res>
    extends _$FetchedDriverProfileStateCopyWithImpl<$Res,
        _$_FetchedDriverProfileState>
    implements _$$_FetchedDriverProfileStateCopyWith<$Res> {
  __$$_FetchedDriverProfileStateCopyWithImpl(
      _$_FetchedDriverProfileState _value,
      $Res Function(_$_FetchedDriverProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_FetchedDriverProfileState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DriverProfile,
    ));
  }
}

/// @nodoc

class _$_FetchedDriverProfileState implements _FetchedDriverProfileState {
  _$_FetchedDriverProfileState({required this.profile});

  @override
  final DriverProfile profile;

  @override
  String toString() {
    return 'FetchedDriverProfileState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchedDriverProfileState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchedDriverProfileStateCopyWith<_$_FetchedDriverProfileState>
      get copyWith => __$$_FetchedDriverProfileStateCopyWithImpl<
          _$_FetchedDriverProfileState>(this, _$identity);
}

abstract class _FetchedDriverProfileState implements FetchedDriverProfileState {
  factory _FetchedDriverProfileState({required final DriverProfile profile}) =
      _$_FetchedDriverProfileState;

  @override
  DriverProfile get profile;
  @override
  @JsonKey(ignore: true)
  _$$_FetchedDriverProfileStateCopyWith<_$_FetchedDriverProfileState>
      get copyWith => throw _privateConstructorUsedError;
}
