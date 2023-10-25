// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fleet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FleetState {
  List<Car> get myCars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FleetStateCopyWith<FleetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FleetStateCopyWith<$Res> {
  factory $FleetStateCopyWith(
          FleetState value, $Res Function(FleetState) then) =
      _$FleetStateCopyWithImpl<$Res, FleetState>;
  @useResult
  $Res call({List<Car> myCars});
}

/// @nodoc
class _$FleetStateCopyWithImpl<$Res, $Val extends FleetState>
    implements $FleetStateCopyWith<$Res> {
  _$FleetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myCars = null,
  }) {
    return _then(_value.copyWith(
      myCars: null == myCars
          ? _value.myCars
          : myCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FleetStateCopyWith<$Res>
    implements $FleetStateCopyWith<$Res> {
  factory _$$_FleetStateCopyWith(
          _$_FleetState value, $Res Function(_$_FleetState) then) =
      __$$_FleetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> myCars});
}

/// @nodoc
class __$$_FleetStateCopyWithImpl<$Res>
    extends _$FleetStateCopyWithImpl<$Res, _$_FleetState>
    implements _$$_FleetStateCopyWith<$Res> {
  __$$_FleetStateCopyWithImpl(
      _$_FleetState _value, $Res Function(_$_FleetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myCars = null,
  }) {
    return _then(_$_FleetState(
      myCars: null == myCars
          ? _value._myCars
          : myCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$_FleetState implements _FleetState {
  _$_FleetState({final List<Car> myCars = const []}) : _myCars = myCars;

  final List<Car> _myCars;
  @override
  @JsonKey()
  List<Car> get myCars {
    if (_myCars is EqualUnmodifiableListView) return _myCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myCars);
  }

  @override
  String toString() {
    return 'FleetState(myCars: $myCars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FleetState &&
            const DeepCollectionEquality().equals(other._myCars, _myCars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_myCars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FleetStateCopyWith<_$_FleetState> get copyWith =>
      __$$_FleetStateCopyWithImpl<_$_FleetState>(this, _$identity);
}

abstract class _FleetState implements FleetState {
  factory _FleetState({final List<Car> myCars}) = _$_FleetState;

  @override
  List<Car> get myCars;
  @override
  @JsonKey(ignore: true)
  _$$_FleetStateCopyWith<_$_FleetState> get copyWith =>
      throw _privateConstructorUsedError;
}
