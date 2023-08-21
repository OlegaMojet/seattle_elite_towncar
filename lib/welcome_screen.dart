import 'package:flutter/material.dart';
import 'package:seattle_taxi/core/utils/extensions.dart';
import 'package:seattle_taxi/core/utils/theme.dart';

import 'core/utils/gen/assets.gen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Assets.images.rootMainImage.image(
            height: context.height,
            width: context.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome to\nSeattle Elite Towncar Limousine and Coach',
                    style: context.theme.textTheme.displaySmall!
                        .copyWith(color: context.colors.white),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Professional luxury transportation services with nobility, confidentiality and protocol.',
                    style: context.theme.textTheme.bodyLarge!
                        .copyWith(color: context.colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 64,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const LoginBottomSheet(),
                    );
                  },
                  child: SizedBox(
                    width: context.width,
                    child: Center(
                      child: Text(
                        'Login to an account',
                        style: context.theme.textTheme.labelLarge!
                            .copyWith(color: context.colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const SignUpBottomSheet(),
                    );
                  },
                  child: SizedBox(
                    width: context.width,
                    height: 48,
                    child: Center(
                      child: Text(
                        'Create new account',
                        style: context.theme.textTheme.labelLarge!
                            .copyWith(color: context.colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          context.height * 0.62 + MediaQuery.of(context).viewInsets.bottom / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      color: context.colors.white,
      child: Column(
        children: [
          Text(
            'Login to an account',
            style: context.theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'Please enter the phone number\nto get the verification code.',
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge!
                .copyWith(color: context.colors.gray),
          ),
          const SizedBox(height: 32),
          const AppTextField(
            label: 'Phone number',
            hint: '+111',
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Text(
                'Send verification code',
                style: context.theme.textTheme.labelLarge!.copyWith(
                  color: context.colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          AppCheckbox(
            label: "I'm a driver",
            value: false,
            onChange: (value) {},
          ),
          const SizedBox(height: 64),
          Text(
            'Need help?',
            style: context.theme.textTheme.bodyLarge!.copyWith(
              color: context.colors.gray,
            ),
          )
        ],
      ),
    );
  }
}

class SignUpBottomSheet extends StatelessWidget {
  const SignUpBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          context.height * 0.72 + MediaQuery.of(context).viewInsets.bottom / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      color: context.colors.white,
      child: Column(
        children: [
          Text(
            'Create an account',
            style: context.theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'Please enter your name and the phone number\nto get the verification code.',
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge!
                .copyWith(color: context.colors.gray),
          ),
          const SizedBox(height: 32),
          const AppTextField(
            label: 'Full name',
            hint: 'Full name',
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 24),
          const AppTextField(
            label: 'Phone number',
            hint: '+111',
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Text(
                'Send verification code',
                style: context.theme.textTheme.labelLarge!.copyWith(
                  color: context.colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          AppCheckbox(
            label: "I'm a driver",
            value: false,
            onChange: (value) {},
          ),
          const SizedBox(height: 64),
          Text(
            'Need help?',
            style: context.theme.textTheme.bodyLarge!.copyWith(
              color: context.colors.gray,
            ),
          )
        ],
      ),
    );
  }
}

class AppCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool) onChange;
  const AppCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              onChange(!value);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        color: context.colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  if (value)
                    const Center(
                      child: Icon(
                        Icons.check_sharp,
                        size: 18,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        Text(
          label,
          style: context.theme.textTheme.bodyLarge!.copyWith(height: 1),
        ),
      ],
    );
  }
}

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType keyboardType;

  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.theme.textTheme.labelLarge,
        ),
        const SizedBox(height: 5),
        TextField(
          keyboardType: keyboardType,
          cursorWidth: 1,
          cursorColor: context.colors.mediumBlue,
          decoration: InputDecoration(
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
