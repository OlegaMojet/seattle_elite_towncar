import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';

class AdditionalInformationScreen extends StatefulWidget {
  const AdditionalInformationScreen({super.key});

  @override
  State<AdditionalInformationScreen> createState() =>
      _AdditionalInformationScreenState();
}

class _AdditionalInformationScreenState
    extends State<AdditionalInformationScreen> {
  final GlobalKey<FormFieldState<String?>> _descriptionKey =
      GlobalKey<FormFieldState<String?>>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: FormBuilder(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Additional information',
                style: context.theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              AppTextFormField(
                fieldKey: _descriptionKey,
                label: 'Addition information',
                required: false,
                hint:
                    'Please list all additional stops, description of required services and any other accommodations that you may need.',
                controller: TextEditingController(),
                isCollapsed: true,
                name: 'additional_info',
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: context.width,
                child: ElevatedButton(
                  onPressed: () {
                    _descriptionKey.currentState?.save();
                    if (_descriptionKey.currentState?.value != null) {
                      context.read<FormBloc>().add(
                            AddAdditionalInfo(
                              additionalInfo:
                                  _descriptionKey.currentState!.value!,
                            ),
                          );
                    }

                    context.pushNamed(AppRouter.paymentDetails);
                  },
                  child: const Text('Go to payment details'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
