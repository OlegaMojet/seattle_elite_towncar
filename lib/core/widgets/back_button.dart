import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const AppBackButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkResponse(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Row(
          children: [
            Assets.icons.arrowLeft.svg(),
            const SizedBox(width: 4),
            Text(
              'Back',
              style: context.theme.textTheme.labelMedium!.copyWith(
                color: AppColors.gray,
              ),
            )
          ],
        ),
      ),
    );
  }
}
