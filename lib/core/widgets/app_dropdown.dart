import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';

class AppDropdown extends StatelessWidget {
  final String label;
  final bool required;
  final GlobalKey<FormFieldState> fieldKey;
  final List<String> items;
  final String? initialValue;
  final String? hint;
  final bool enabled;
  const AppDropdown(
      {super.key,
      required this.label,
      required this.fieldKey,
      this.initialValue,
      this.required = false, required this.items, this.hint, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.theme.textTheme.labelLarge!.copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 4),
        FormBuilderDropdown(
          key: fieldKey,
          name: label,
          enabled: enabled,
          initialValue: initialValue,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(hintText: hint ?? 'Select'),
          icon: Assets.icons.arrowDown.svg(),
          items: items
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          validator: FormBuilderValidators.compose(
            [
              if (required) FormBuilderValidators.required(),
            ],
          ),
        ),
      ],
    );
  }
}
