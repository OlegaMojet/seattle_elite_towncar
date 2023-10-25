// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehiclesState {
  List<Car>? get cars => throw _privateConstructorUsedError;
  int? get vehicleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehiclesStateCopyWith<VehiclesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehiclesStateCopyWith<$Res> {
  factory $VehiclesStateCopyWith(
          VehiclesState value, $Res Function(VehiclesState) then) =
      _$VehiclesStateCopyWithImpl<$Res, VehiclesState>;
  @useResult
  $Res call({List<Car>? cars, int? vehicleType});
}

/// @nodoc
class _$VehiclesStateCopyWithImpl<$Res, $Val extends VehiclesState>
    implements $VehiclesStateCopyWith<$Res> {
  _$VehiclesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      cars: freezed == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehiclesStateCopyWith<$Res>
    implements $VehiclesStateCopyWith<$Res> {
  factory _$$_VehiclesStateCopyWith(
          _$_VehiclesState value, $Res Function(_$_VehiclesState) then) =
      __$$_VehiclesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car>? cars, int? vehicleType});
}

/// @nodoc
class __$$_VehiclesStateCopyWithImpl<$Res>
    extends _$VehiclesStateCopyWithImpl<$Res, _$_VehiclesState>
    implements _$$_VehiclesStateCopyWith<$Res> {
  __$$_VehiclesStateCopyWithImpl(
      _$_VehiclesState _value, $Res Function(_$_VehiclesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$_VehiclesState(
      cars: freezed == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_VehiclesState implements _VehiclesState {
  _$_VehiclesState({final List<Car>? cars, this.vehicleType}) : _cars = cars;

  final List<Car>? _cars;
  @override
  List<Car>? get cars {
    final value = _cars;
    if (value == null) return null;
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? vehicleType;

  @override
  String toString() {
    return 'VehiclesState(cars: $cars, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehiclesState &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cars), vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehiclesStateCopyWith<_$_VehiclesState> get copyWith =>
      __$$_VehiclesStateCopyWithImpl<_$_VehiclesState>(this, _$identity);
}

abstract class _VehiclesState implements VehiclesState {
  factory _VehiclesState({final List<Car>? cars, final int? vehicleType}) =
      _$_VehiclesState;

  @override
  List<Car>? get cars;
  @override
  int? get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$_VehiclesStateCopyWith<_$_VehiclesState> get copyWith =>
      throw _privateConstructorUsedError;
}
