import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/reservations_bloc.dart';

class BriefDescriptionScreen extends StatefulWidget {
  const BriefDescriptionScreen({super.key});

  @override
  State<BriefDescriptionScreen> createState() => _BriefDescriptionScreenState();
}

class _BriefDescriptionScreenState extends State<BriefDescriptionScreen> {
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
                'Brief description',
                style: context.theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              AppTextFormField(
                fieldKey: _descriptionKey,
                label: 'Brief description of information',
                required: false,
                hint: 'Enter description here please..',
                controller: TextEditingController(),
                isCollapsed: true,
                name: 'brief_description',
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
                    context.read<ReservationsBloc>().add(
                          AddReservation(
                            formData: context.read<FormBloc>().state,
                          ),
                        );
                    
                    context.pushNamed(AppRouter.thankYou, extra: false);
                  },
                  child: const Text('Get a quote'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
