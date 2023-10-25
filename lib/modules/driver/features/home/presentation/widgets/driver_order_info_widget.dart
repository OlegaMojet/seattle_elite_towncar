import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';

class DriverOrderInfoWidget extends StatelessWidget {
  final OrderInfoModel? info;
  final bool isNew;
  final VoidCallback onTapSee;
  final VoidCallback onTapStart;
  const DriverOrderInfoWidget(
      {super.key,
      required this.info,
      required this.onTapSee,
      required this.onTapStart,
      this.isNew = true});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      enabled: isNew,
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          CustomSlidableAction(
            backgroundColor: AppColors.mediumBlue,
            foregroundColor: AppColors.white,
            child: Assets.icons.close.svg(),
            onPressed: (context) {},
          )
        ],
      ),
      child: InkResponse(
        highlightShape: BoxShape.rectangle,
        onTap: onTapSee,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(
              color: AppColors.lightBlue,
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Assets.icons.mainReservations.svg(height: 16, width: 16),
                      const SizedBox(width: 6),
                      Text(
                        '${Strings.carTypeSingle[info!.rideDetails.vehicle.vehicleType!]}, ${info!.rideDetails.vehicle.carName}',
                        style: context.theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
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
                            DateFormat.jm()
                                .format(info?.rideDetails.dateTime ??
                                    DateTime.now())
                                .toLowerCase(),
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
                            DateFormat.MMMd().format(
                                info?.rideDetails.dateTime ?? DateTime.now()),
                            style: context.theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    info!.passengerInfo.fullName,
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 16,
                thickness: 1,
                color: AppColors.lightGray,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Assets.icons.locationPickupPoint.svg(),
                  const SizedBox(width: 5),
                  Text(
                    info?.rideDetails.pickupAddress ?? '3892 Yellow Camp Road',
                    style:
                        context.theme.textTheme.bodyLarge!.copyWith(height: 1),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Assets.icons.locationDestinationPoint.svg(),
                  const SizedBox(width: 5),
                  Text(
                    info?.rideDetails.destinationAddress ??
                        '12345 Green Camp Road',
                    style:
                        context.theme.textTheme.bodyLarge!.copyWith(height: 1),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: onTapSee,
                      child: const Text('See details'),
                    ),
                  ),
                  if (info?.orderStatus == OrderStatus.active)
                    const SizedBox(width: 16),
                  if (info?.orderStatus == OrderStatus.active)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onTapStart,
                        child: const Text('Start a trip'),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
