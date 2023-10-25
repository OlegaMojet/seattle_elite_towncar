import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';

class FleetVehicleBlock extends StatelessWidget {
  final Car car;
  final VoidCallback onTap;
  const FleetVehicleBlock({super.key, required this.car, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: 218,
        width: 164,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: AppColors.lightBlue,
          ),
        ),
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.memory(base64Decode(car.image!)),
            const SizedBox(height: 8),
            Text(
              Strings.carTypeSingle[car.vehicleType!],
              style: context.theme.textTheme.titleLarge!.copyWith(
                color: AppColors.black,
              ),
            ),
            Text(
              car.carName!,
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
                  'Up to ${car.numOfPass} people',
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
                  '${car.numOfBags} size suitcase',
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    color: AppColors.gray,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
