import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/passenger_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_bloc.dart';

class ReservationPassengerInfo extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Car vehicle;

  const ReservationPassengerInfo(
      {super.key, required this.formKey, required this.vehicle});

  @override
  State<ReservationPassengerInfo> createState() =>
      _ReservationPassengerInfoState();
}

class _ReservationPassengerInfoState extends State<ReservationPassengerInfo>
    with AutomaticKeepAliveClientMixin {
  static final _fullNameKey = GlobalKey<FormFieldState>();

  static final _companyNameKey = GlobalKey<FormFieldState>();

  static final _phoneKey = GlobalKey<FormFieldState>();

  static final _daytimePhoneKey = GlobalKey<FormFieldState>();

  static final _addressKey = GlobalKey<FormFieldState>();

  static final _emailKey = GlobalKey<FormFieldState>();
  static final _useInfoKey = GlobalKey<FormFieldState>();
  static final _saveKey = GlobalKey<FormFieldState>();

  static TextEditingController? _fullNameController;
  static TextEditingController? _companyNameController;
  static TextEditingController? _phoneController;
  static TextEditingController? _daytimePhoneController;
  static TextEditingController? _addressController;
  static TextEditingController? _emailController;
  bool _useInfo = false;
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
      _daytimePhoneController =
          TextEditingController(text: passengerInfo.daytimePhone);
      _addressController = TextEditingController(text: passengerInfo.address);

      _emailController = TextEditingController(text: passengerInfo.email);
      _isSave = passengerInfo.saveInfo ?? false;
      _useInfo = passengerInfo.useInfoForPickup ?? false;
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
            controller: _daytimePhoneController,
            fieldKey: _daytimePhoneKey,
            label: 'Daytime Phone',
            hint: 'Enter daytime phone (optional)',
            required: false,
            keyboardType: TextInputType.phone,
            formatter: PhoneInputFormatter(),
            name: 'daytime_phone',
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            controller: _addressController,
            fieldKey: _addressKey,
            label: 'Address*',
            hint: 'Enter address',
            required: true,
            name: 'main_address',
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
            fieldKey: _useInfoKey,
            initialValue: _useInfo,
            onChanged: (value) {},
            text: 'Use info for pick up location',
          ),
          const SizedBox(height: 34),
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
                            address: _addressKey.currentState?.value,
                          ),
                        ),
                      );
                  context.pushNamed(AppRouter.rideDetails,
                      extra: (true, widget.vehicle));
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
  bool get wantKeepAlive => true;
}
