// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationsState {
  List<ReservationInfo>? get reservations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationsStateCopyWith<ReservationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationsStateCopyWith<$Res> {
  factory $ReservationsStateCopyWith(
          ReservationsState value, $Res Function(ReservationsState) then) =
      _$ReservationsStateCopyWithImpl<$Res, ReservationsState>;
  @useResult
  $Res call({List<ReservationInfo>? reservations});
}

/// @nodoc
class _$ReservationsStateCopyWithImpl<$Res, $Val extends ReservationsState>
    implements $ReservationsStateCopyWith<$Res> {
  _$ReservationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservations = freezed,
  }) {
    return _then(_value.copyWith(
      reservations: freezed == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReservationsStateCopyWith<$Res>
    implements $ReservationsStateCopyWith<$Res> {
  factory _$$_ReservationsStateCopyWith(_$_ReservationsState value,
          $Res Function(_$_ReservationsState) then) =
      __$$_ReservationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReservationInfo>? reservations});
}

/// @nodoc
class __$$_ReservationsStateCopyWithImpl<$Res>
    extends _$ReservationsStateCopyWithImpl<$Res, _$_ReservationsState>
    implements _$$_ReservationsStateCopyWith<$Res> {
  __$$_ReservationsStateCopyWithImpl(
      _$_ReservationsState _value, $Res Function(_$_ReservationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservations = freezed,
  }) {
    return _then(_$_ReservationsState(
      reservations: freezed == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationInfo>?,
    ));
  }
}

/// @nodoc

class _$_ReservationsState implements _ReservationsState {
  _$_ReservationsState({final List<ReservationInfo>? reservations})
      : _reservations = reservations;

  final List<ReservationInfo>? _reservations;
  @override
  List<ReservationInfo>? get reservations {
    final value = _reservations;
    if (value == null) return null;
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReservationsState(reservations: $reservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReservationsState &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reservations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationsStateCopyWith<_$_ReservationsState> get copyWith =>
      __$$_ReservationsStateCopyWithImpl<_$_ReservationsState>(
          this, _$identity);
}

abstract class _ReservationsState implements ReservationsState {
  factory _ReservationsState({final List<ReservationInfo>? reservations}) =
      _$_ReservationsState;

  @override
  List<ReservationInfo>? get reservations;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationsStateCopyWith<_$_ReservationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
