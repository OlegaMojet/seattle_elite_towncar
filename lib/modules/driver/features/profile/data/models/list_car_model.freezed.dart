// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCarModel _$ListCarModelFromJson(Map<String, dynamic> json) {
  return _ListCarModel.fromJson(json);
}

/// @nodoc
mixin _$ListCarModel {
  List<CarModel> get listCarModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCarModelCopyWith<ListCarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCarModelCopyWith<$Res> {
  factory $ListCarModelCopyWith(
          ListCarModel value, $Res Function(ListCarModel) then) =
      _$ListCarModelCopyWithImpl<$Res, ListCarModel>;
  @useResult
  $Res call({List<CarModel> listCarModel});
}

/// @nodoc
class _$ListCarModelCopyWithImpl<$Res, $Val extends ListCarModel>
    implements $ListCarModelCopyWith<$Res> {
  _$ListCarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCarModel = null,
  }) {
    return _then(_value.copyWith(
      listCarModel: null == listCarModel
          ? _value.listCarModel
          : listCarModel // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCarModelCopyWith<$Res>
    implements $ListCarModelCopyWith<$Res> {
  factory _$$_ListCarModelCopyWith(
          _$_ListCarModel value, $Res Function(_$_ListCarModel) then) =
      __$$_ListCarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CarModel> listCarModel});
}

/// @nodoc
class __$$_ListCarModelCopyWithImpl<$Res>
    extends _$ListCarModelCopyWithImpl<$Res, _$_ListCarModel>
    implements _$$_ListCarModelCopyWith<$Res> {
  __$$_ListCarModelCopyWithImpl(
      _$_ListCarModel _value, $Res Function(_$_ListCarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCarModel = null,
  }) {
    return _then(_$_ListCarModel(
      listCarModel: null == listCarModel
          ? _value._listCarModel
          : listCarModel // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCarModel implements _ListCarModel {
  _$_ListCarModel({required final List<CarModel> listCarModel})
      : _listCarModel = listCarModel;

  factory _$_ListCarModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListCarModelFromJson(json);

  final List<CarModel> _listCarModel;
  @override
  List<CarModel> get listCarModel {
    if (_listCarModel is EqualUnmodifiableListView) return _listCarModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCarModel);
  }

  @override
  String toString() {
    return 'ListCarModel(listCarModel: $listCarModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCarModel &&
            const DeepCollectionEquality()
                .equals(other._listCarModel, _listCarModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCarModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCarModelCopyWith<_$_ListCarModel> get copyWith =>
      __$$_ListCarModelCopyWithImpl<_$_ListCarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCarModelToJson(
      this,
    );
  }
}

abstract class _ListCarModel implements ListCarModel {
  factory _ListCarModel({required final List<CarModel> listCarModel}) =
      _$_ListCarModel;

  factory _ListCarModel.fromJson(Map<String, dynamic> json) =
      _$_ListCarModel.fromJson;

  @override
  List<CarModel> get listCarModel;
  @override
  @JsonKey(ignore: true)
  _$$_ListCarModelCopyWith<_$_ListCarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
