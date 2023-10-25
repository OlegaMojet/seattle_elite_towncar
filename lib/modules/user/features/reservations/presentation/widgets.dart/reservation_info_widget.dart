import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:intl/intl.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/widgets.dart/status_widget.dart';

class ReservationInfoWidget extends StatelessWidget {
  final ReservationInfo? info;
  final VoidCallback onTapSee;
  final VoidCallback onTapReserve;
  const ReservationInfoWidget(
      {super.key,
      required this.info,
      required this.onTapSee,
      required this.onTapReserve});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(8),
      height: 216,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.images.auto.image(width: 148, height: 102),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings
                        .carTypeSingle[info!.rideDetails.vehicle.vehicleType!],
                    style: context.theme.textTheme.titleLarge,
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
                            colorFilter: ColorFilter.mode(
                              info?.status == ReservationStatus.active ||
                                      info?.status == ReservationStatus.reserved
                                  ? AppColors.mediumBlue
                                  : AppColors.gray,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            DateFormat.jm()
                                .format(info?.rideDetails.dateTime ??
                                    DateTime.now())
                                .toLowerCase(),
                            style: context.theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.gray,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Row(
                        children: [
                          Assets.icons.calendar.svg(
                            colorFilter: ColorFilter.mode(
                              info?.status == ReservationStatus.active ||
                                      info?.status == ReservationStatus.reserved
                                  ? AppColors.mediumBlue
                                  : AppColors.gray,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            DateFormat.MMMd().format(
                                info?.rideDetails.dateTime ?? DateTime.now()),
                            style: context.theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.gray,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  StatusWidget(
                      status: info?.status ?? ReservationStatus.active),
                  const SizedBox(height: 4),
                  Text(
                    info?.price != null ? '\$${info?.price}' : 'NP',
                    style: context.theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: onTapSee,
                  child: const Text('See details'),
                ),
              ),
              if (info?.status == ReservationStatus.active)
                const SizedBox(width: 16),
              if (info?.status == ReservationStatus.active)
                Expanded(
                  child: ElevatedButton(
                    onPressed: onTapReserve,
                    child: const Text('Reserve now'),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
