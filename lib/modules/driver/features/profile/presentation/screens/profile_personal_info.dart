import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';

class DriverProfilePersonalInfo extends StatefulWidget {
  final DriverProfile profile;
  const DriverProfilePersonalInfo({super.key, required this.profile});

  @override
  State<DriverProfilePersonalInfo> createState() =>
      _DriverProfilePersonalInfoState();
}

class _DriverProfilePersonalInfoState extends State<DriverProfilePersonalInfo> {
  final _fullNameKey = GlobalKey<FormFieldState>();

  final _phoneKey = GlobalKey<FormFieldState>();

  TextEditingController? _fullNameController;
  TextEditingController? _phoneController;

  @override
  void initState() {
    _fullNameController = TextEditingController(text: widget.profile.name);
    _phoneController =
        TextEditingController(text: '+${widget.profile.phoneNumber}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal information',
              style: context.theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            AppTextFormField(
              controller: _fullNameController,
              fieldKey: _fullNameKey,
              label: 'Full name*',
              hint: 'Enter full name',
              required: true,
              name: 'full_name',
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
            SizedBox(
              width: context.width,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
