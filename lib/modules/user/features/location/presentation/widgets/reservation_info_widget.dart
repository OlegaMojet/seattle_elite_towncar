import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

class UserReservationInfoWidget extends StatelessWidget {
  final ReservationInfo? info;
  const UserReservationInfoWidget({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Assets.icons.locationPickupPoint.svg(),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  StringUtils.rideDetailsToAddress(info!.rideDetails, true),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: context.theme.textTheme.bodyLarge!.copyWith(height: 1),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Assets.icons.locationDestinationPoint.svg(),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  StringUtils.rideDetailsToAddress(info!.rideDetails, false),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: context.theme.textTheme.bodyLarge!.copyWith(height: 1),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            height: 1,
            thickness: 1,
            color: AppColors.lightGray,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64,
                  child: Image.memory(
                    base64Decode(info!.rideDetails.vehicle.image!),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.carTypeSingle[
                          info!.rideDetails.vehicle.vehicleType!],
                      style: context.theme.textTheme.titleMedium,
                    ),
                    Text(
                      info!.rideDetails.vehicle.carName!,
                      style: context.theme.textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          children: [
                            Assets.icons.clock.svg(
                              colorFilter: const ColorFilter.mode(
                                AppColors.mediumBlue,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              DateFormat.jm()
                                  .format(info?.rideDetails.dateTime ??
                                      DateTime.now())
                                  .toLowerCase(),
                              style:
                                  context.theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Assets.icons.calendar.svg(
                              colorFilter: const ColorFilter.mode(
                                AppColors.mediumBlue,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              DateFormat.MMMd().format(
                                  info?.rideDetails.dateTime ?? DateTime.now()),
                              style:
                                  context.theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
