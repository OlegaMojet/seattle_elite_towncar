// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_quotes_by.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetQuotesByModel _$GetQuotesByModelFromJson(Map<String, dynamic> json) {
  return _GetQuotesByModel.fromJson(json);
}

/// @nodoc
mixin _$GetQuotesByModel {
  String get by => throw _privateConstructorUsedError;
  String? get val => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetQuotesByModelCopyWith<GetQuotesByModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuotesByModelCopyWith<$Res> {
  factory $GetQuotesByModelCopyWith(
          GetQuotesByModel value, $Res Function(GetQuotesByModel) then) =
      _$GetQuotesByModelCopyWithImpl<$Res, GetQuotesByModel>;
  @useResult
  $Res call({String by, String? val});
}

/// @nodoc
class _$GetQuotesByModelCopyWithImpl<$Res, $Val extends GetQuotesByModel>
    implements $GetQuotesByModelCopyWith<$Res> {
  _$GetQuotesByModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = null,
    Object? val = freezed,
  }) {
    return _then(_value.copyWith(
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      val: freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetQuotesByModelCopyWith<$Res>
    implements $GetQuotesByModelCopyWith<$Res> {
  factory _$$_GetQuotesByModelCopyWith(
          _$_GetQuotesByModel value, $Res Function(_$_GetQuotesByModel) then) =
      __$$_GetQuotesByModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String by, String? val});
}

/// @nodoc
class __$$_GetQuotesByModelCopyWithImpl<$Res>
    extends _$GetQuotesByModelCopyWithImpl<$Res, _$_GetQuotesByModel>
    implements _$$_GetQuotesByModelCopyWith<$Res> {
  __$$_GetQuotesByModelCopyWithImpl(
      _$_GetQuotesByModel _value, $Res Function(_$_GetQuotesByModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = null,
    Object? val = freezed,
  }) {
    return _then(_$_GetQuotesByModel(
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      val: freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetQuotesByModel implements _GetQuotesByModel {
  _$_GetQuotesByModel({required this.by, required this.val});

  factory _$_GetQuotesByModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetQuotesByModelFromJson(json);

  @override
  final String by;
  @override
  final String? val;

  @override
  String toString() {
    return 'GetQuotesByModel(by: $by, val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetQuotesByModel &&
            (identical(other.by, by) || other.by == by) &&
            (identical(other.val, val) || other.val == val));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, by, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetQuotesByModelCopyWith<_$_GetQuotesByModel> get copyWith =>
      __$$_GetQuotesByModelCopyWithImpl<_$_GetQuotesByModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetQuotesByModelToJson(
      this,
    );
  }
}

abstract class _GetQuotesByModel implements GetQuotesByModel {
  factory _GetQuotesByModel(
      {required final String by,
      required final String? val}) = _$_GetQuotesByModel;

  factory _GetQuotesByModel.fromJson(Map<String, dynamic> json) =
      _$_GetQuotesByModel.fromJson;

  @override
  String get by;
  @override
  String? get val;
  @override
  @JsonKey(ignore: true)
  _$$_GetQuotesByModelCopyWith<_$_GetQuotesByModel> get copyWith =>
      throw _privateConstructorUsedError;
}
