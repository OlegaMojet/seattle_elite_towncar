// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteReservationModel _$QuoteReservationModelFromJson(
    Map<String, dynamic> json) {
  return _QuoteReservationModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteReservationModel {
  int? get quoteId => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  int get phoneNumber => throw _privateConstructorUsedError;
  int? get daytimePhoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get homeAddress => throw _privateConstructorUsedError;
  int get serviceType => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  int? get numOfBags => throw _privateConstructorUsedError;
  int? get numOfPass => throw _privateConstructorUsedError;
  PickupDestinationInfoModel get pickupInfo =>
      throw _privateConstructorUsedError;
  PickupDestinationInfoModel get destinationInfo =>
      throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  int get driverStatus => throw _privateConstructorUsedError;
  int get clientStatus => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteReservationModelCopyWith<QuoteReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteReservationModelCopyWith<$Res> {
  factory $QuoteReservationModelCopyWith(QuoteReservationModel value,
          $Res Function(QuoteReservationModel) then) =
      _$QuoteReservationModelCopyWithImpl<$Res, QuoteReservationModel>;
  @useResult
  $Res call(
      {int? quoteId,
      int carId,
      String clientId,
      String? driverId,
      String name,
      String? companyName,
      int phoneNumber,
      int? daytimePhoneNumber,
      String email,
      String homeAddress,
      int serviceType,
      String dateTime,
      int? numOfBags,
      int? numOfPass,
      PickupDestinationInfoModel pickupInfo,
      PickupDestinationInfoModel destinationInfo,
      String? additionalInfo,
      int driverStatus,
      int clientStatus,
      double? price});

  $PickupDestinationInfoModelCopyWith<$Res> get pickupInfo;
  $PickupDestinationInfoModelCopyWith<$Res> get destinationInfo;
}

/// @nodoc
class _$QuoteReservationModelCopyWithImpl<$Res,
        $Val extends QuoteReservationModel>
    implements $QuoteReservationModelCopyWith<$Res> {
  _$QuoteReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteId = freezed,
    Object? carId = null,
    Object? clientId = null,
    Object? driverId = freezed,
    Object? name = null,
    Object? companyName = freezed,
    Object? phoneNumber = null,
    Object? daytimePhoneNumber = freezed,
    Object? email = null,
    Object? homeAddress = null,
    Object? serviceType = null,
    Object? dateTime = null,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? pickupInfo = null,
    Object? destinationInfo = null,
    Object? additionalInfo = freezed,
    Object? driverStatus = null,
    Object? clientStatus = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      quoteId: freezed == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as int?,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      daytimePhoneNumber: freezed == daytimePhoneNumber
          ? _value.daytimePhoneNumber
          : daytimePhoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      homeAddress: null == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupInfo: null == pickupInfo
          ? _value.pickupInfo
          : pickupInfo // ignore: cast_nullable_to_non_nullable
              as PickupDestinationInfoModel,
      destinationInfo: null == destinationInfo
          ? _value.destinationInfo
          : destinationInfo // ignore: cast_nullable_to_non_nullable
              as PickupDestinationInfoModel,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as int,
      clientStatus: null == clientStatus
          ? _value.clientStatus
          : clientStatus // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupDestinationInfoModelCopyWith<$Res> get pickupInfo {
    return $PickupDestinationInfoModelCopyWith<$Res>(_value.pickupInfo,
        (value) {
      return _then(_value.copyWith(pickupInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupDestinationInfoModelCopyWith<$Res> get destinationInfo {
    return $PickupDestinationInfoModelCopyWith<$Res>(_value.destinationInfo,
        (value) {
      return _then(_value.copyWith(destinationInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuoteReservationModelCopyWith<$Res>
    implements $QuoteReservationModelCopyWith<$Res> {
  factory _$$_QuoteReservationModelCopyWith(_$_QuoteReservationModel value,
          $Res Function(_$_QuoteReservationModel) then) =
      __$$_QuoteReservationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? quoteId,
      int carId,
      String clientId,
      String? driverId,
      String name,
      String? companyName,
      int phoneNumber,
      int? daytimePhoneNumber,
      String email,
      String homeAddress,
      int serviceType,
      String dateTime,
      int? numOfBags,
      int? numOfPass,
      PickupDestinationInfoModel pickupInfo,
      PickupDestinationInfoModel destinationInfo,
      String? additionalInfo,
      int driverStatus,
      int clientStatus,
      double? price});

  @override
  $PickupDestinationInfoModelCopyWith<$Res> get pickupInfo;
  @override
  $PickupDestinationInfoModelCopyWith<$Res> get destinationInfo;
}

/// @nodoc
class __$$_QuoteReservationModelCopyWithImpl<$Res>
    extends _$QuoteReservationModelCopyWithImpl<$Res, _$_QuoteReservationModel>
    implements _$$_QuoteReservationModelCopyWith<$Res> {
  __$$_QuoteReservationModelCopyWithImpl(_$_QuoteReservationModel _value,
      $Res Function(_$_QuoteReservationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteId = freezed,
    Object? carId = null,
    Object? clientId = null,
    Object? driverId = freezed,
    Object? name = null,
    Object? companyName = freezed,
    Object? phoneNumber = null,
    Object? daytimePhoneNumber = freezed,
    Object? email = null,
    Object? homeAddress = null,
    Object? serviceType = null,
    Object? dateTime = null,
    Object? numOfBags = freezed,
    Object? numOfPass = freezed,
    Object? pickupInfo = null,
    Object? destinationInfo = null,
    Object? additionalInfo = freezed,
    Object? driverStatus = null,
    Object? clientStatus = null,
    Object? price = freezed,
  }) {
    return _then(_$_QuoteReservationModel(
      quoteId: freezed == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as int?,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      daytimePhoneNumber: freezed == daytimePhoneNumber
          ? _value.daytimePhoneNumber
          : daytimePhoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      homeAddress: null == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      numOfBags: freezed == numOfBags
          ? _value.numOfBags
          : numOfBags // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfPass: freezed == numOfPass
          ? _value.numOfPass
          : numOfPass // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupInfo: null == pickupInfo
          ? _value.pickupInfo
          : pickupInfo // ignore: cast_nullable_to_non_nullable
              as PickupDestinationInfoModel,
      destinationInfo: null == destinationInfo
          ? _value.destinationInfo
          : destinationInfo // ignore: cast_nullable_to_non_nullable
              as PickupDestinationInfoModel,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as int,
      clientStatus: null == clientStatus
          ? _value.clientStatus
          : clientStatus // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_QuoteReservationModel implements _QuoteReservationModel {
  _$_QuoteReservationModel(
      {this.quoteId,
      required this.carId,
      required this.clientId,
      this.driverId,
      required this.name,
      this.companyName,
      required this.phoneNumber,
      this.daytimePhoneNumber,
      required this.email,
      required this.homeAddress,
      required this.serviceType,
      required this.dateTime,
      this.numOfBags,
      this.numOfPass,
      required this.pickupInfo,
      required this.destinationInfo,
      this.additionalInfo,
      required this.driverStatus,
      required this.clientStatus,
      this.price});

  factory _$_QuoteReservationModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteReservationModelFromJson(json);

  @override
  final int? quoteId;
  @override
  final int carId;
  @override
  final String clientId;
  @override
  final String? driverId;
  @override
  final String name;
  @override
  final String? companyName;
  @override
  final int phoneNumber;
  @override
  final int? daytimePhoneNumber;
  @override
  final String email;
  @override
  final String homeAddress;
  @override
  final int serviceType;
  @override
  final String dateTime;
  @override
  final int? numOfBags;
  @override
  final int? numOfPass;
  @override
  final PickupDestinationInfoModel pickupInfo;
  @override
  final PickupDestinationInfoModel destinationInfo;
  @override
  final String? additionalInfo;
  @override
  final int driverStatus;
  @override
  final int clientStatus;
  @override
  final double? price;

  @override
  String toString() {
    return 'QuoteReservationModel(quoteId: $quoteId, carId: $carId, clientId: $clientId, driverId: $driverId, name: $name, companyName: $companyName, phoneNumber: $phoneNumber, daytimePhoneNumber: $daytimePhoneNumber, email: $email, homeAddress: $homeAddress, serviceType: $serviceType, dateTime: $dateTime, numOfBags: $numOfBags, numOfPass: $numOfPass, pickupInfo: $pickupInfo, destinationInfo: $destinationInfo, additionalInfo: $additionalInfo, driverStatus: $driverStatus, clientStatus: $clientStatus, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuoteReservationModel &&
            (identical(other.quoteId, quoteId) || other.quoteId == quoteId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.daytimePhoneNumber, daytimePhoneNumber) ||
                other.daytimePhoneNumber == daytimePhoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.homeAddress, homeAddress) ||
                other.homeAddress == homeAddress) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.numOfBags, numOfBags) ||
                other.numOfBags == numOfBags) &&
            (identical(other.numOfPass, numOfPass) ||
                other.numOfPass == numOfPass) &&
            (identical(other.pickupInfo, pickupInfo) ||
                other.pickupInfo == pickupInfo) &&
            (identical(other.destinationInfo, destinationInfo) ||
                other.destinationInfo == destinationInfo) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.driverStatus, driverStatus) ||
                other.driverStatus == driverStatus) &&
            (identical(other.clientStatus, clientStatus) ||
                other.clientStatus == clientStatus) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        quoteId,
        carId,
        clientId,
        driverId,
        name,
        companyName,
        phoneNumber,
        daytimePhoneNumber,
        email,
        homeAddress,
        serviceType,
        dateTime,
        numOfBags,
        numOfPass,
        pickupInfo,
        destinationInfo,
        additionalInfo,
        driverStatus,
        clientStatus,
        price
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuoteReservationModelCopyWith<_$_QuoteReservationModel> get copyWith =>
      __$$_QuoteReservationModelCopyWithImpl<_$_QuoteReservationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteReservationModelToJson(
      this,
    );
  }
}

abstract class _QuoteReservationModel implements QuoteReservationModel {
  factory _QuoteReservationModel(
      {final int? quoteId,
      required final int carId,
      required final String clientId,
      final String? driverId,
      required final String name,
      final String? companyName,
      required final int phoneNumber,
      final int? daytimePhoneNumber,
      required final String email,
      required final String homeAddress,
      required final int serviceType,
      required final String dateTime,
      final int? numOfBags,
      final int? numOfPass,
      required final PickupDestinationInfoModel pickupInfo,
      required final PickupDestinationInfoModel destinationInfo,
      final String? additionalInfo,
      required final int driverStatus,
      required final int clientStatus,
      final double? price}) = _$_QuoteReservationModel;

  factory _QuoteReservationModel.fromJson(Map<String, dynamic> json) =
      _$_QuoteReservationModel.fromJson;

  @override
  int? get quoteId;
  @override
  int get carId;
  @override
  String get clientId;
  @override
  String? get driverId;
  @override
  String get name;
  @override
  String? get companyName;
  @override
  int get phoneNumber;
  @override
  int? get daytimePhoneNumber;
  @override
  String get email;
  @override
  String get homeAddress;
  @override
  int get serviceType;
  @override
  String get dateTime;
  @override
  int? get numOfBags;
  @override
  int? get numOfPass;
  @override
  PickupDestinationInfoModel get pickupInfo;
  @override
  PickupDestinationInfoModel get destinationInfo;
  @override
  String? get additionalInfo;
  @override
  int get driverStatus;
  @override
  int get clientStatus;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_QuoteReservationModelCopyWith<_$_QuoteReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
