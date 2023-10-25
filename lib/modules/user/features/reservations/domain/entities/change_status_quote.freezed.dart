// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_status_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeStatusQuoteModel _$ChangeStatusQuoteModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeStatusQuoteModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeStatusQuoteModel {
  int get quoteId => throw _privateConstructorUsedError;
  int? get clientStatus => throw _privateConstructorUsedError;
  int? get driverStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ChangeStatusQuoteModel implements _ChangeStatusQuoteModel {
  _$_ChangeStatusQuoteModel(
      {required this.quoteId, this.clientStatus, this.driverStatus});

  factory _$_ChangeStatusQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeStatusQuoteModelFromJson(json);

  @override
  final int quoteId;
  @override
  final int? clientStatus;
  @override
  final int? driverStatus;

  @override
  String toString() {
    return 'ChangeStatusQuoteModel(quoteId: $quoteId, clientStatus: $clientStatus, driverStatus: $driverStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeStatusQuoteModel &&
            (identical(other.quoteId, quoteId) || other.quoteId == quoteId) &&
            (identical(other.clientStatus, clientStatus) ||
                other.clientStatus == clientStatus) &&
            (identical(other.driverStatus, driverStatus) ||
                other.driverStatus == driverStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quoteId, clientStatus, driverStatus);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeStatusQuoteModelToJson(
      this,
    );
  }
}

abstract class _ChangeStatusQuoteModel implements ChangeStatusQuoteModel {
  factory _ChangeStatusQuoteModel(
      {required final int quoteId,
      final int? clientStatus,
      final int? driverStatus}) = _$_ChangeStatusQuoteModel;

  factory _ChangeStatusQuoteModel.fromJson(Map<String, dynamic> json) =
      _$_ChangeStatusQuoteModel.fromJson;

  @override
  int get quoteId;
  @override
  int? get clientStatus;
  @override
  int? get driverStatus;
}
