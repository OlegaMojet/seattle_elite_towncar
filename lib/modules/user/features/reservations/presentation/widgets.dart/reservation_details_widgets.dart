import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/utils/utils.dart';

class ReservationDetailsPassengerInfo extends StatelessWidget {
  final PassengerInfo info;
  const ReservationDetailsPassengerInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Passenger information',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          Text(
            info.fullName,
            style: context.theme.textTheme.titleLarge!,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Assets.icons.phone.svg(),
              const SizedBox(width: 8),
              Text(
                info.phone,
                style: context.theme.textTheme.bodyLarge!.copyWith(height: 1.3),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            info.email,
            style: context.theme.textTheme.bodyLarge!,
          ),
          if (info.address != null)
            Column(
              children: [
                const SizedBox(height: 2),
                Text(
                  info.address!,
                  style: context.theme.textTheme.bodyLarge!,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class ReservationDetailsRoadInformation extends StatelessWidget {
  final RideDetails details;
  const ReservationDetailsRoadInformation({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Road information',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          Text(
            Strings.serviceType[details.serviceType],
            style: context.theme.textTheme.bodyLarge!,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Assets.icons.mainReservations.svg(height: 16, width: 16),
              const SizedBox(width: 8),
              Text(
                '${Strings.carTypeSingle[details.vehicle.vehicleType!]}, ${details.vehicle.carName}',
                style:
                    context.theme.textTheme.titleMedium!.copyWith(height: 1.3),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Row(
                children: [
                  Assets.icons.clock.svg(
                    colorFilter: const ColorFilter.mode(
                      AppColors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    DateFormat.jm().format(details.dateTime).toLowerCase(),
                    style: context.theme.textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Row(
                children: [
                  Assets.icons.calendar.svg(
                    colorFilter: const ColorFilter.mode(
                      AppColors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    DateFormat.MMMd().format(details.dateTime),
                    style: context.theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          if (details.numOfBags != null && details.numOfPass != null)
            Row(
              children: [
                Row(
                  children: [
                    Assets.icons.peoples.svg(
                      colorFilter: const ColorFilter.mode(
                        AppColors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${details.numOfPass}',
                      style: context.theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                Row(
                  children: [
                    Assets.icons.suitcases.svg(
                      colorFilter: const ColorFilter.mode(
                        AppColors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${details.numOfBags}',
                      style: context.theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class ReservationDetailsPickup extends StatelessWidget {
  final RideDetails details;
  const ReservationDetailsPickup({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pickup',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Column(
                children: [
                  const SizedBox(height: 3),
                  Assets.icons.locationPickupPoint.svg(),
                ],
              ),
              const SizedBox(width: 8),
              Text(
                StringUtils.rideDetailsToAddress(details, true),
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  height: 1.3,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Assets.icons.phone.svg(),
              const SizedBox(width: 8),
              Text(
                '+79818154818',
                style: context.theme.textTheme.bodyLarge!.copyWith(height: 1.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReservationDetailsDestination extends StatelessWidget {
  final RideDetails details;
  const ReservationDetailsDestination({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Destination',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const SizedBox(height: 3),
                  Assets.icons.locationDestinationPoint.svg(),
                ],
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  StringUtils.rideDetailsToAddress(details, false),
                  style:
                      context.theme.textTheme.bodyLarge!.copyWith(height: 1.3),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Assets.icons.phone.svg(),
              const SizedBox(width: 8),
              Text(
                '+79818154818',
                style: context.theme.textTheme.bodyLarge!.copyWith(height: 1.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReservationDetailsAdditionalInfo extends StatelessWidget {
  final String info;
  const ReservationDetailsAdditionalInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: context.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Additional information',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          Text(
            info,
            style: context.theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class ReservationDetailsPaymentDetails extends StatelessWidget {
  final PaymentDetails details;
  const ReservationDetailsPaymentDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: context.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment details',
            style: context.theme.textTheme.titleSmall!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 4),
          if (details.paymentType == 0)
            Text(
              'Card ${StringUtils.obscureCard(details.cardNumber!)}',
              style: context.theme.textTheme.bodyLarge,
            )
          else
            Text(
              details.paymentType == 1 ? 'Direct Billing' : 'Cash/check',
              style: context.theme.textTheme.bodyLarge,
            )
        ],
      ),
    );
  }
}
