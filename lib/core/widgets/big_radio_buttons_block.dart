import 'package:flutter/widgets.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';

class BigRadioButtonsBlock extends StatelessWidget {
  final ValueChanged<int> onChoosed;
  final List<String> items;
  final bool isVertical;
  final int value;
  final (Widget activeIcon, Widget icon) firstIcons;
  final (Widget activeIcon, Widget icon) secondIcons;

  const BigRadioButtonsBlock({
    super.key,
    required this.onChoosed,
    required this.value,
    required this.firstIcons,
    required this.secondIcons,
    this.isVertical = false,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? Column(
            children: List.generate(
              items.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  onTap: () {
                    onChoosed(index);
                  },
                  child: BigRadioButton(
                    isVertical: true,
                    width: context.width,
                    text: items[index],
                    activeIcon: firstIcons.$1,
                    icon: firstIcons.$2,
                    isActive: value == index,
                  ),
                ),
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  onChoosed(0);
                },
                child: BigRadioButton(
                  width: (context.width - 32) / 2,
                  text: items[0],
                  activeIcon: firstIcons.$1,
                  icon: firstIcons.$2,
                  isActive: value == 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  onChoosed(1);
                },
                child: BigRadioButton(
                  width: (context.width - 32) / 2,
                  text: items[1],
                  activeIcon: secondIcons.$1,
                  icon: secondIcons.$2,
                  isActive: value == 1,
                ),
              ),
            ],
          );
  }
}

class BigRadioButton extends StatelessWidget {
  final double width;

  final bool isActive;
  final bool isVertical;
  final String text;
  final Widget activeIcon;
  final Widget icon;
  const BigRadioButton({
    super.key,
    required this.text,
    required this.activeIcon,
    required this.icon,
    required this.isActive,
    required this.width,
    this.isVertical = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: isVertical ? 16 : 0),
      decoration: BoxDecoration(
        color: isActive ? AppColors.dark : AppColors.white,
        border: Border.all(
          color: isActive ? AppColors.dark : AppColors.lightGray,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment:
              isVertical ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            isActive ? activeIcon : icon,
            const SizedBox(width: 8),
            Text(
              text,
              style: context.theme.textTheme.labelLarge!.copyWith(
                color: isActive ? AppColors.white : AppColors.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
