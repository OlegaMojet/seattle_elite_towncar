import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';

class ProfileContactElement extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isCall;
  const ProfileContactElement({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isCall = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: 56,
        width: context.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: isCall ? Assets.icons.call.svg(
                height: 24,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.mediumBlue,
                  BlendMode.srcIn,
                ),
              ) : Assets.icons.email.svg(
                height: 24,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.mediumBlue,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.theme.textTheme.labelSmall!.copyWith(
                    color: AppColors.gray,
                  ),
                ),
                Text(
                  subtitle,
                  style: context.theme.textTheme.bodyLarge,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
