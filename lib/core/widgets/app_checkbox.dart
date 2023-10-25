import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';

class AppCheckbox extends StatelessWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;
  final String text;
  final GlobalKey<FormFieldState>? fieldKey;
  const AppCheckbox({
    super.key,
    required this.initialValue,
    required this.onChanged,
    required this.text,
    this.fieldKey,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      key: fieldKey,
      initialValue: initialValue,
      onChanged: (value) {
        onChanged(value!);
      },
      builder: (state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                if (state.value as bool)
                  Center(
                    child: Assets.icons.checkbox.svg(),
                  ),
                InkResponse(
                  radius: 10,
                  onTap: () {
                    state.didChange(!state.value!);
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        width: 2,
                        color: state.value!
                            ? AppColors.mediumBlue
                            : AppColors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: context.theme.textTheme.bodyLarge,
            ),
          ],
        );
      },
      name: text,
    );
  }
}
