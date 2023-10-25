import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/core/widgets/big_radio_buttons_block.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';

import '../../bloc/form/form_bloc.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _creditCardKey = GlobalKey<FormFieldState<String?>>();
  final _expDate = GlobalKey<FormFieldState<String?>>();
  final _cvv = GlobalKey<FormFieldState<String?>>();
  int paymentDetails = 0;
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
        child: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment details',
                style: context.theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              BigRadioButtonsBlock(
                isVertical: true,
                onChoosed: (value) {
                  setState(() {
                    paymentDetails = value;
                  });
                },
                value: paymentDetails,
                firstIcons: (
                  Assets.icons.radioEnable.svg(),
                  Assets.icons.radioDisable.svg(),
                ),
                secondIcons: (
                  Assets.icons.radioEnable.svg(),
                  Assets.icons.radioDisable.svg(),
                ),
                items: const [
                  'Credit card',
                  'Direct Billing',
                  'Cash/check (Wa State only)',
                ],
              ),
              const SizedBox(height: 32),
              if (paymentDetails == 0)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextFormField(
                      fieldKey: _creditCardKey,
                      formatter: CreditCardNumberInputFormatter(),
                      keyboardType: TextInputType.number,
                      label: 'Card number*',
                      required: true,
                      hint: 'Credit card number',
                      controller: TextEditingController(),
                      name: 'card',
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            fieldKey: _expDate,
                            formatter: CreditCardExpirationDateFormatter(),
                            keyboardType: TextInputType.number,
                            label: 'Exp. date',
                            required: false,
                            hint: 'Enter number',
                            controller: TextEditingController(),
                            name: 'exp_date',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: AppTextFormField(
                            obscured: true,
                            fieldKey: _cvv,
                            formatter: CreditCardCvcInputFormatter(),
                            keyboardType: TextInputType.number,
                            label: 'CVV',
                            required: false,
                            hint: '***',
                            controller: TextEditingController(),
                            name: 'cvv',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    AppCheckbox(
                      initialValue: false,
                      onChanged: (value) {},
                      text: "Billing same as in passenger's info",
                    ),
                    const SizedBox(height: 32),
                    Text(
                      'By submiting this form you agreed that: (1) you are the credit card holder and (2) that you are requesting the services listed above and (3) that you are authorizing this card to be used for the requested services.',
                      style: context.theme.textTheme.bodySmall!.copyWith(
                        color: AppColors.gray,
                      ),
                    ),
                    const SizedBox(height: 8),
                    AppCheckbox(
                      initialValue: false,
                      onChanged: (value) {},
                      text: 'I agree',
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              SizedBox(
                width: context.width,
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState
                        ?.saveAndValidate(autoScrollWhenFocusOnInvalid: true);
                    if (_formKey.currentState!.isValid) {
                      context.read<FormBloc>().add(
                            AddPaymentDetails(
                              paymentDetails: PaymentDetails(
                                paymentType: paymentDetails,
                                cardNumber: _creditCardKey.currentState?.value,
                                expDate: _expDate.currentState?.value,
                                cvv: int.tryParse(
                                    _cvv.currentState?.value ?? ''),
                              ),
                            ),
                          );
                      context.pushNamed(AppRouter.thankYou, extra: true);
                    }
                  },
                  child: const Text('Go to ride details'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
