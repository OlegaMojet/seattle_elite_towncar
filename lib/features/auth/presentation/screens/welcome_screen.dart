import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_event.dart';

import '../bloc/auth/bloc.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isOpened = false;
  bool isDriver = false;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<AuthorizationBloc, AuthorizationState>(
        listener: (context, state) {
          if (state is Authenticating) {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is Authenticated) {
            if (state.isDriver) {

              context.go(AppRouter.driverHome);
            } else {
              context.read<UserProfileBloc>().add(FetchProfile(profile: state.clientProfile));
              context.go(AppRouter.userHome);
            }
          }
        },
        child: Stack(
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
                    AnimatedOpacity(
                      opacity: isOpened ? 0 : 1,
                      duration: const Duration(milliseconds: 400),
                      child: Text(
                        'Welcome to\nSeattle Elite Towncar Limousine and Coach',
                        style: context.theme.textTheme.displaySmall!
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Professional luxury transportation services with nobility, confidentiality and protocol.',
                      style: context.theme.textTheme.bodyLarge!
                          .copyWith(color: AppColors.white),
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
                      setState(() {
                        isOpened = true;
                      });

                      showModalBottomSheet(
                        barrierColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => LoginBottomSheet(
                          isDriver: isDriver,
                          onChangeDriver: (value) {
                            setState(() {
                              isDriver = value;
                            });
                          },
                          onTapSend: (value) {
                            context.read<AuthorizationBloc>().add(
                                  Authenticate(
                                    oAuthProvider: PhoneAuthProvider(),
                                    isDriver: isDriver,
                                    phone: value,
                                  ),
                                );
                            context.pop();

                            showModalBottomSheet(
                              context: context,
                              barrierColor: Colors.transparent,
                              isScrollControlled: true,
                              builder: (context) => OTPBottomSheet(
                                isDriver: isDriver,
                                name: name,
                              ),
                            ).then((value) => setState(() {
                                  isOpened = false;
                                }));
                          },
                        ),
                      ).then((value) => setState(() {
                            isOpened = false;
                          }));
                    },
                    child: SizedBox(
                      width: context.width,
                      child: Center(
                        child: Text(
                          'Login to an account',
                          style: context.theme.textTheme.labelLarge!
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    style: context.theme.textButtonTheme.style!.copyWith(
                      overlayColor: const MaterialStatePropertyAll(
                        Colors.transparent,
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        barrierColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => SignUpBottomSheet(
                          isDriver: isDriver,
                          onTapSend: (phone, name) {
                            this.name = name;
                            context.read<AuthorizationBloc>().add(
                                  Authenticate(
                                    oAuthProvider: PhoneAuthProvider(),
                                    isDriver: isDriver,
                                    phone: phone,
                                    name: name,
                                  ),
                                );
                            context.pop();

                            showModalBottomSheet(
                              context: context,
                              barrierColor: Colors.transparent,
                              isScrollControlled: true,
                              builder: (context) => OTPBottomSheet(
                                isDriver: isDriver,
                                name: name,
                              ),
                            ).then((value) => setState(() {
                                  isOpened = false;
                                }));
                          },
                          onChangeDriver: (value) {
                            setState(() {
                              isDriver = value;
                            });
                          },
                        ),
                      );
                    },
                    child: SizedBox(
                      width: context.width,
                      height: 48,
                      child: Center(
                        child: Text(
                          'Create new account',
                          style: context.theme.textTheme.labelLarge!
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginBottomSheet extends StatefulWidget {
  final ValueChanged<String> onTapSend;
  final bool isDriver;
  final ValueChanged<bool> onChangeDriver;
  const LoginBottomSheet(
      {super.key,
      required this.onTapSend,
      required this.isDriver,
      required this.onChangeDriver});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _phoneKey = GlobalKey<FormFieldState<String>>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          context.height * 0.62 + MediaQuery.of(context).viewInsets.bottom / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      color: AppColors.white,
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
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            fieldKey: _phoneKey,
            label: 'Phone number',
            hint: '+111',
            required: true,
            keyboardType: TextInputType.phone,
            name: 'phone',
            formatter: PhoneInputFormatter(),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              widget.onTapSend(_phoneKey.currentState!.value!);
            },
            child: Center(
              child: Text(
                'Send verification code',
                style: context.theme.textTheme.labelLarge!.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              AppCheckbox(
                text: "I'm a driver",
                initialValue: widget.isDriver,
                onChanged: widget.onChangeDriver,
              ),
            ],
          ),
          const SizedBox(height: 64),
          Text(
            'Need help?',
            style: context.theme.textTheme.bodyLarge!.copyWith(
              color: AppColors.gray,
            ),
          )
        ],
      ),
    );
  }
}

class SignUpBottomSheet extends StatelessWidget {
  final Function(String phone, String? name) onTapSend;
  final bool isDriver;
  final ValueChanged<bool> onChangeDriver;
  SignUpBottomSheet(
      {super.key,
      required this.onTapSend,
      required this.isDriver,
      required this.onChangeDriver});

  static final _phoneKey = GlobalKey<FormFieldState<String>>();
  static final _nameKey = GlobalKey<FormFieldState<String?>>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          context.height * 0.72 + MediaQuery.of(context).viewInsets.bottom / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                .copyWith(color: AppColors.gray),
          ),
          const SizedBox(height: 32),
          AppTextFormField(
            fieldKey: _nameKey,
            label: 'Full name',
            hint: 'Full name',
            required: true,
            keyboardType: TextInputType.name,
            name: 'name',
          ),
          const SizedBox(height: 24),
          AppTextFormField(
            fieldKey: _phoneKey,
            label: 'Phone number',
            hint: '+111',
            required: true,
            keyboardType: TextInputType.phone,
            name: 'phone',
            formatter: PhoneInputFormatter(),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              onTapSend(
                  _phoneKey.currentState!.value!, _nameKey.currentState!.value);
            },
            child: Center(
              child: Text(
                'Send verification code',
                style: context.theme.textTheme.labelLarge!.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          AppCheckbox(
            text: "I'm a driver",
            initialValue: isDriver,
            onChanged: onChangeDriver,
          ),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Need help?',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  color: AppColors.gray,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class OTPBottomSheet extends StatelessWidget {
  final bool isDriver;
  final String? name;
  const OTPBottomSheet({
    super.key,
    required this.isDriver,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      String otp = '';
      return Container(
        height:
            context.height * 0.5 + MediaQuery.of(context).viewInsets.bottom / 2,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        color: AppColors.white,
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: context.theme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            Text(
              'Enter the verification code\nwe just sent your number.',
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge!
                  .copyWith(color: AppColors.gray),
            ),
            const SizedBox(height: 32),
            OTPWidget(
              onChangeCode: (code) {
                context.read<AuthorizationBloc>().add(
                      HandleOtp(code: code),
                    );
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context
                    .read<AuthorizationBloc>()
                    .add(OTPConfirm(isDriver: isDriver, name: name));
              },
              child: Center(
                child: Text(
                  'Send verification code',
                  style: context.theme.textTheme.labelLarge!.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 64),
            Text(
              'Need help?',
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: AppColors.gray,
              ),
            )
          ],
        ),
      );
    });
  }
}

class OTPWidget extends StatefulWidget {
  final ValueChanged<String> onChangeCode;
  const OTPWidget({
    super.key,
    required this.onChangeCode,
  });

  @override
  State<OTPWidget> createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  final _firstKey = GlobalKey();
  final _secondKey = GlobalKey();
  final _thirdKey = GlobalKey();
  final _fourthKey = GlobalKey();
  final _fifthKey = GlobalKey();
  final _sixthKey = GlobalKey();

  late TextEditingController _firstController;
  late TextEditingController _secondController;
  late TextEditingController _thirdController;
  late TextEditingController _fourthController;
  late TextEditingController _fifthController;
  late TextEditingController _sixthController;

  @override
  void initState() {
    _firstController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text);
          }
        });
      });
    _secondController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text);
          }
        });
      });
    _thirdController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text);
          }
        });
      });
    _fourthController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text);
          }
        });
      });
    _fifthController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text +
                      _fifthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text +
                _fifthController.text);
          }
        });
      });
    _sixthController = TextEditingController()
      ..addListener(() {
        setState(() {
          if ((_firstController.text +
                      _secondController.text +
                      _thirdController.text +
                      _fourthController.text +
                      _fifthController.text +
                      _sixthController.text)
                  .length ==
              6) {
            widget.onChangeCode(_firstController.text +
                _secondController.text +
                _thirdController.text +
                _fourthController.text +
                _fifthController.text +
                _sixthController.text);
          }
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            autofocus: true,
            key: _firstKey,
            controller: _firstController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _firstController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            key: _secondKey,
            controller: _secondController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _secondController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            key: _thirdKey,
            controller: _thirdController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _thirdController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            key: _fourthKey,
            controller: _fourthController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _fourthController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            key: _fifthKey,
            controller: _fifthController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _fifthController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            key: _sixthKey,
            controller: _sixthController,
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: _sixthController.text.length == 1
                  ? context.theme.inputDecorationTheme.focusedBorder
                  : context.theme.inputDecorationTheme.enabledBorder,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).unfocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ),
      ],
    );
  }
}
