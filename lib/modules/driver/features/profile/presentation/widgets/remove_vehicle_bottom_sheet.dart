import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/utils.dart';

class RemoveVehicleBottomSheet extends StatelessWidget {
  final VoidCallback onTapYes;
  
  const RemoveVehicleBottomSheet({super.key, required this.onTapYes});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      color: AppColors.white,
      height: context.height * 0.4,
      width: context.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Are you sure?',
            textAlign: TextAlign.center,
            style: context.theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 8),
          Text(
            "You won't be able to revert this.",
            style: context.theme.textTheme.bodyLarge!
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: context.width,
            child: ElevatedButton(
              onPressed: context.pop,
              child: const Text(
                'No',
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: context.width,
            child: TextButton(
              onPressed: onTapYes,
              child: const Text(
                'Yes',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
