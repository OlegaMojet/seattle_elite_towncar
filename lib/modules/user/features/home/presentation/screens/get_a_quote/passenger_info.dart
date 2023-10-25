import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_bloc.dart';

class GetAQuotePassengerInfo extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Car vehicle;
  const GetAQuotePassengerInfo(
      {super.key, required this.formKey, required this.vehicle});

  @override
  State<GetAQuotePassengerInfo> createState() => _GetAQuotePassengerInfoState();
}

class _GetAQuotePassengerInfoState extends State<GetAQuotePassengerInfo>
    with AutomaticKeepAliveClientMixin {
  final _fullNameKey = GlobalKey<FormFieldState<String>>();
  final _companyNameKey = GlobalKey<FormFieldState<String>>();
  final _addressKey = GlobalKey<FormFieldState<String>>();
  final _phoneKey = GlobalKey<FormFieldState<String>>();
  final _emailKey = GlobalKey<FormFieldState<String>>();
  final _saveKey = GlobalKey<FormFieldState<bool>>();

  TextEditingController? _fullNameController;
  TextEditingController? _companyNameController;
  TextEditingController? _phoneController;
  TextEditingController? _emailController;
  bool _isSave = false;

  @override
  void didChangeDependencies() {
    final PassengerInfo? passengerInfo =
        context.read<FormBloc>().state.passengerInfo;
    if (passengerInfo != null) {
      _fullNameController = TextEditingController(text: passengerInfo.fullName);
      _companyNameController =
          TextEditingController(text: passengerInfo.companyName);
      _phoneController = TextEditingController(text: passengerInfo.phone);
      _emailController = TextEditingController(text: passengerInfo.email);
      _isSave = passengerInfo.saveInfo ?? false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FormBuilder(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            controller: _fullNameController,
            fieldKey: _fullNameKey,
            label: 'Full name*',
            hint: 'Enter full name',
            required: true,
            name: 'name',
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            controller: _companyNameController,
            fieldKey: _companyNameKey,
            label: 'Company name',
            hint: 'Company name (optional)',
            required: false,
            name: 'company_name',
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            controller: _phoneController,
            fieldKey: _phoneKey,
            label: 'Phone*',
            hint: 'Enter phone number',
            required: true,
            keyboardType: TextInputType.phone,
            formatter: PhoneInputFormatter(),
            name: 'phone',
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            controller: _emailController,
            fieldKey: _emailKey,
            label: 'Email*',
            hint: 'Enter email',
            required: true,
            keyboardType: TextInputType.emailAddress,
            name: 'email',
          ),
          const SizedBox(height: 32),
          AppCheckbox(
            fieldKey: _saveKey,
            initialValue: _isSave,
            onChanged: (value) {},
            text: 'Save the information to my profile',
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: context.width,
            child: ElevatedButton(
              onPressed: () {
                widget.formKey.currentState
                    ?.saveAndValidate(autoScrollWhenFocusOnInvalid: true);
                if (widget.formKey.currentState!.isValid) {
                  context.read<FormBloc>().add(
                        AddPassengerInfo(
                          passengerInfo: PassengerInfo(
                            fullName: _fullNameKey.currentState!.value!,
                            phone: _phoneKey.currentState!.value!,
                            email: _emailKey.currentState!.value!,
                            companyName: _companyNameKey.currentState?.value,
                            saveInfo: _saveKey.currentState?.value,
                            address: '',
                          ),
                        ),
                      );
                  context.pushNamed(
                    AppRouter.rideDetails,
                    extra: (false, widget.vehicle),
                  );
                }
              },
              child: const Text('Go to ride details'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
