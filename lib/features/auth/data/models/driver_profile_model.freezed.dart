// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) {
  return _DriverProfileModel.fromJson(json);
}

/// @nodoc
mixin _$DriverProfileModel {
  @JsonKey(name: 'driverId')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get phoneNumber => throw _privateConstructorUsedError;
  int? get driverMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'notis')
  bool get notifications => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverProfileModelCopyWith<DriverProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileModelCopyWith<$Res> {
  factory $DriverProfileModelCopyWith(
          DriverProfileModel value, $Res Function(DriverProfileModel) then) =
      _$DriverProfileModelCopyWithImpl<$Res, DriverProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'driverId') String? id,
      String? name,
      int? phoneNumber,
      int? driverMain,
      @JsonKey(name: 'notis') bool notifications});
}

/// @nodoc
class _$DriverProfileModelCopyWithImpl<$Res, $Val extends DriverProfileModel>
    implements $DriverProfileModelCopyWith<$Res> {
  _$DriverProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? driverMain = freezed,
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      driverMain: freezed == driverMain
          ? _value.driverMain
          : driverMain // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverProfileModelCopyWith<$Res>
    implements $DriverProfileModelCopyWith<$Res> {
  factory _$$_DriverProfileModelCopyWith(_$_DriverProfileModel value,
          $Res Function(_$_DriverProfileModel) then) =
      __$$_DriverProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'driverId') String? id,
      String? name,
      int? phoneNumber,
      int? driverMain,
      @JsonKey(name: 'notis') bool notifications});
}

/// @nodoc
class __$$_DriverProfileModelCopyWithImpl<$Res>
    extends _$DriverProfileModelCopyWithImpl<$Res, _$_DriverProfileModel>
    implements _$$_DriverProfileModelCopyWith<$Res> {
  __$$_DriverProfileModelCopyWithImpl(
      _$_DriverProfileModel _value, $Res Function(_$_DriverProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? driverMain = freezed,
    Object? notifications = null,
  }) {
    return _then(_$_DriverProfileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      driverMain: freezed == driverMain
          ? _value.driverMain
          : driverMain // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverProfileModel implements _DriverProfileModel {
  _$_DriverProfileModel(
      {@JsonKey(name: 'driverId') this.id,
      this.name,
      this.phoneNumber,
      this.driverMain,
      @JsonKey(name: 'notis') this.notifications = true});

  factory _$_DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverProfileModelFromJson(json);

  @override
  @JsonKey(name: 'driverId')
  final String? id;
  @override
  final String? name;
  @override
  final int? phoneNumber;
  @override
  final int? driverMain;
  @override
  @JsonKey(name: 'notis')
  final bool notifications;

  @override
  String toString() {
    return 'DriverProfileModel(id: $id, name: $name, phoneNumber: $phoneNumber, driverMain: $driverMain, notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.driverMain, driverMain) ||
                other.driverMain == driverMain) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phoneNumber, driverMain, notifications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverProfileModelCopyWith<_$_DriverProfileModel> get copyWith =>
      __$$_DriverProfileModelCopyWithImpl<_$_DriverProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverProfileModelToJson(
      this,
    );
  }
}

abstract class _DriverProfileModel implements DriverProfileModel {
  factory _DriverProfileModel(
          {@JsonKey(name: 'driverId') final String? id,
          final String? name,
          final int? phoneNumber,
          final int? driverMain,
          @JsonKey(name: 'notis') final bool notifications}) =
      _$_DriverProfileModel;

  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) =
      _$_DriverProfileModel.fromJson;

  @override
  @JsonKey(name: 'driverId')
  String? get id;
  @override
  String? get name;
  @override
  int? get phoneNumber;
  @override
  int? get driverMain;
  @override
  @JsonKey(name: 'notis')
  bool get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_DriverProfileModelCopyWith<_$_DriverProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
