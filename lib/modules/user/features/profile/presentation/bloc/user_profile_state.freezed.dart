// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchedUserProfileState {
  ClientProfile get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchedUserProfileStateCopyWith<FetchedUserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedUserProfileStateCopyWith<$Res> {
  factory $FetchedUserProfileStateCopyWith(FetchedUserProfileState value,
          $Res Function(FetchedUserProfileState) then) =
      _$FetchedUserProfileStateCopyWithImpl<$Res, FetchedUserProfileState>;
  @useResult
  $Res call({ClientProfile profile});
}

/// @nodoc
class _$FetchedUserProfileStateCopyWithImpl<$Res,
        $Val extends FetchedUserProfileState>
    implements $FetchedUserProfileStateCopyWith<$Res> {
  _$FetchedUserProfileStateCopyWithImpl(this._value, this._then);

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
              as ClientProfile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchedUserProfileStateCopyWith<$Res>
    implements $FetchedUserProfileStateCopyWith<$Res> {
  factory _$$_FetchedUserProfileStateCopyWith(_$_FetchedUserProfileState value,
          $Res Function(_$_FetchedUserProfileState) then) =
      __$$_FetchedUserProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClientProfile profile});
}

/// @nodoc
class __$$_FetchedUserProfileStateCopyWithImpl<$Res>
    extends _$FetchedUserProfileStateCopyWithImpl<$Res,
        _$_FetchedUserProfileState>
    implements _$$_FetchedUserProfileStateCopyWith<$Res> {
  __$$_FetchedUserProfileStateCopyWithImpl(_$_FetchedUserProfileState _value,
      $Res Function(_$_FetchedUserProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_FetchedUserProfileState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ClientProfile,
    ));
  }
}

/// @nodoc

class _$_FetchedUserProfileState implements _FetchedUserProfileState {
  _$_FetchedUserProfileState({required this.profile});

  @override
  final ClientProfile profile;

  @override
  String toString() {
    return 'FetchedUserProfileState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchedUserProfileState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchedUserProfileStateCopyWith<_$_FetchedUserProfileState>
      get copyWith =>
          __$$_FetchedUserProfileStateCopyWithImpl<_$_FetchedUserProfileState>(
              this, _$identity);
}

abstract class _FetchedUserProfileState implements FetchedUserProfileState {
  factory _FetchedUserProfileState({required final ClientProfile profile}) =
      _$_FetchedUserProfileState;

  @override
  ClientProfile get profile;
  @override
  @JsonKey(ignore: true)
  _$$_FetchedUserProfileStateCopyWith<_$_FetchedUserProfileState>
      get copyWith => throw _privateConstructorUsedError;
}
