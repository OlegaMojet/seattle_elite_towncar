import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';

class ProfileMainPersonalElement extends StatelessWidget {
  final String name;
  final String phone;
  final VoidCallback onTap;
  const ProfileMainPersonalElement({
    super.key,
    required this.onTap,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      width: context.width,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: context.theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '+$phone',
                    style: context.theme.textTheme.bodyLarge!
                        .copyWith(color: AppColors.gray),
                  ),
                ],
              ),
              Assets.icons.arrowRight.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
