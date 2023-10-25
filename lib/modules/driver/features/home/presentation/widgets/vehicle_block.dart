import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';

import '../../../../../../core/utils/utils.dart';

class VehicleBlock extends StatelessWidget {
  final Car vehicle;
  final VoidCallback onTap;
  const VehicleBlock({super.key, required this.vehicle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 274,
      width: 164,
      color: AppColors.white,
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.images.auto.image(),
          const SizedBox(height: 8),
          Text(
            Strings.carTypeSingle[vehicle.vehicleType!],
            style: context.theme.textTheme.titleLarge!.copyWith(
              color: AppColors.black,
            ),
          ),
          Text(
            vehicle.carName!,
            style: context.theme.textTheme.titleSmall!.copyWith(
              color: AppColors.dark,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Assets.icons.peoples.svg(),
              const SizedBox(width: 6),
              Text(
                'Up to ${vehicle.numOfPass} people',
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.gray,
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Assets.icons.suitcases.svg(),
              const SizedBox(width: 6),
              Text(
                '${vehicle.numOfBags} size suitcase',
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.gray,
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: onTap,
            child: const SizedBox(
              width: double.infinity,
              child: Center(child: Text('Select')),
            ),
          )
        ],
      ),
    );
  }
}
