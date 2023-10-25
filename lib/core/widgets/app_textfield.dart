import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';

class AppTextFormField extends StatelessWidget {
  final String label;
  final bool required;
  final String name;
  final GlobalKey<FormFieldState> fieldKey;
  final String hint;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool isCollapsed;
  final TextInputFormatter? formatter;
  final bool obscured;
  final bool? enabled;

  const AppTextFormField({
    super.key,
    required this.fieldKey,
    required this.label,
    required this.required,
    required this.hint,
    required this.name,
    this.keyboardType = TextInputType.name,
    this.controller,
    this.isCollapsed = false,
    this.formatter,
    this.obscured = false,
    this.enabled = true,
  });

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
        FormBuilderTextField(
          key: fieldKey,
          name: name,
          enabled: enabled ?? true,
          maxLines: isCollapsed ? 6 : 1,
          obscureText: obscured,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keyboardType,
          controller: controller,
          inputFormatters: formatter != null ? [formatter!] : null,
          validator: FormBuilderValidators.compose(
            [
              if (required) FormBuilderValidators.required(),
              if (keyboardType == TextInputType.emailAddress)
                FormBuilderValidators.email()
            ],
          ),
          decoration: InputDecoration(
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 9, vertical: isCollapsed ? 9 : 0),
          ),
        ),
      ],
    );
  }
}
