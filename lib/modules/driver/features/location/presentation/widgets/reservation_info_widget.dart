import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class DriverReservationInfoWidget extends StatelessWidget {
  final ReservationInfo? info;
  const DriverReservationInfoWidget({super.key, required this.info});

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
              Text(
                StringUtils.rideDetailsToAddress(info!.rideDetails, true),
                style: context.theme.textTheme.bodyLarge!.copyWith(height: 1),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Assets.icons.locationDestinationPoint.svg(),
              const SizedBox(width: 5),
              Text(
                StringUtils.rideDetailsToAddress(info!.rideDetails, false),
                style: context.theme.textTheme.bodyLarge!.copyWith(height: 1),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkResponse(
                    radius: 22,
                    onTap: () async {
                      if (context.mounted) {
                        await launchUrl(
                          Uri(
                            scheme: 'tel',
                            path: info?.passengerInfo.phone ?? '2064539128',
                          ),
                        );
                      }
                    },
                    child: Assets.icons.call.svg(
                      height: 30,
                      width: 30,
                      colorFilter: const ColorFilter.mode(
                        AppColors.mediumBlue,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info?.passengerInfo.fullName ?? 'Joe Smith',
                      style: context.theme.textTheme.titleMedium,
                    ),
                    Text(
                      info?.passengerInfo.phone ?? '206-453-9128',
                      style: context.theme.textTheme.bodyMedium,
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
