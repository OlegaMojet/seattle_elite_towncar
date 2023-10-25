// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientProfileModel _$ClientProfileModelFromJson(Map<String, dynamic> json) {
  return _ClientProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ClientProfileModel {
  String? get clientId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get daytimePhoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'notis')
  int? get notifications => throw _privateConstructorUsedError;
  String? get cardNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ClientProfileModel implements _ClientProfileModel {
  _$_ClientProfileModel(
      {this.clientId,
      this.name,
      this.phoneNumber,
      this.address,
      this.companyName,
      this.daytimePhoneNumber,
      this.email,
      @JsonKey(name: 'notis') this.notifications,
      this.cardNum});

  factory _$_ClientProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientProfileModelFromJson(json);

  @override
  final String? clientId;
  @override
  final String? name;
  @override
  final int? phoneNumber;
  @override
  final String? address;
  @override
  final String? companyName;
  @override
  final String? daytimePhoneNumber;
  @override
  final String? email;
  @override
  @JsonKey(name: 'notis')
  final int? notifications;
  @override
  final String? cardNum;

  @override
  String toString() {
    return 'ClientProfileModel(clientId: $clientId, name: $name, phoneNumber: $phoneNumber, address: $address, companyName: $companyName, daytimePhoneNumber: $daytimePhoneNumber, email: $email, notifications: $notifications, cardNum: $cardNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientProfileModel &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.daytimePhoneNumber, daytimePhoneNumber) ||
                other.daytimePhoneNumber == daytimePhoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.cardNum, cardNum) || other.cardNum == cardNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, name, phoneNumber,
      address, companyName, daytimePhoneNumber, email, notifications, cardNum);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientProfileModelToJson(
      this,
    );
  }
}

abstract class _ClientProfileModel implements ClientProfileModel {
  factory _ClientProfileModel(
      {final String? clientId,
      final String? name,
      final int? phoneNumber,
      final String? address,
      final String? companyName,
      final String? daytimePhoneNumber,
      final String? email,
      @JsonKey(name: 'notis') final int? notifications,
      final String? cardNum}) = _$_ClientProfileModel;

  factory _ClientProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ClientProfileModel.fromJson;

  @override
  String? get clientId;
  @override
  String? get name;
  @override
  int? get phoneNumber;
  @override
  String? get address;
  @override
  String? get companyName;
  @override
  String? get daytimePhoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(name: 'notis')
  int? get notifications;
  @override
  String? get cardNum;
}
