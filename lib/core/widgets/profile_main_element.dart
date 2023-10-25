import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';

class ProfileMainElement extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ProfileMainElement(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: context.width,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.theme.textTheme.titleMedium,
              ),
              Assets.icons.arrowRight.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
