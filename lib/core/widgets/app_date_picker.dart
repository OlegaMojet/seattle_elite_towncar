import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';

class AppDatePicker extends StatelessWidget {
  final String label;
  final bool required;
  final GlobalKey<FormFieldState> fieldKey;
  const AppDatePicker(
      {super.key,
      required this.label,
      required this.fieldKey,
      this.required = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.theme.textTheme.labelLarge!.copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 4),
        Stack(
          children: [
            FormBuilderDateTimePicker(
              key: fieldKey,
              format: DateFormat('EEE, M/d/y'),
              firstDate: DateTime.now(),
              name: label,
              inputType: InputType.date,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(hintText: 'Select'),
              validator: FormBuilderValidators.compose(
                [
                  if (required) FormBuilderValidators.required(),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 16,
              child: Assets.icons.calendar.svg(),
            )
          ],
        ),
      ],
    );
  }
}
