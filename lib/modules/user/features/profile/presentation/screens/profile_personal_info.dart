import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';

class UserProfilePersonalInfo extends StatefulWidget {
  final ClientProfile profile;
  const UserProfilePersonalInfo({super.key, required this.profile});

  @override
  State<UserProfilePersonalInfo> createState() =>
      _UserProfilePersonalInfoState();
}

class _UserProfilePersonalInfoState extends State<UserProfilePersonalInfo> {
  final _fullNameKey = GlobalKey<FormFieldState>();

  final _companyNameKey = GlobalKey<FormFieldState>();

  final _phoneKey = GlobalKey<FormFieldState>();

  final _daytimePhoneKey = GlobalKey<FormFieldState>();

  final _addressKey = GlobalKey<FormFieldState>();

  final _emailKey = GlobalKey<FormFieldState>();
  TextEditingController? _fullNameController;
  TextEditingController? _companyNameController;
  TextEditingController? _phoneController;
  TextEditingController? _daytimePhoneController;
  TextEditingController? _addressController;
  TextEditingController? _emailController;

  @override
  void initState() {
    _fullNameController = TextEditingController(text: widget.profile.name);
    _companyNameController =
        TextEditingController(text: widget.profile.companyName);
    _phoneController =
        TextEditingController(text: '+${widget.profile.phoneNumber}');
    _daytimePhoneController =
        TextEditingController(text: widget.profile.daytimePhoneNumber);
    _addressController = TextEditingController(text: widget.profile.address);
    _emailController = TextEditingController(text: widget.profile.email);
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
              name: 'mainAddress',
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
