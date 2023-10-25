import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

import '../../../../../../core/utils/utils.dart';

enum ReservationStatus {
  active('Active', AppColors.lightBlue, AppColors.darkBlue),
  reserved('Reserved', AppColors.lightBlue, AppColors.darkBlue),
  done('Done', AppColors.lightGreen, AppColors.green),
  canceled('Canceled', AppColors.lightRed, AppColors.red);

  final String text;
  final Color backgroundColor;
  final Color textColor;
  const ReservationStatus(this.text, this.backgroundColor, this.textColor);
}

class ReservationInfo {
  final int quoteId;
  final ReservationStatus status;
  final double? price;
  final PassengerInfo passengerInfo;
  final RideDetails rideDetails;
  final String? additionalInfo;
  final PaymentDetails? paymentDetails;

  ReservationInfo({
    required this.quoteId,
    required this.price,
    required this.status,
    required this.passengerInfo,
    required this.rideDetails,
    this.additionalInfo,
    this.paymentDetails,
  });
}
