import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_dropdown.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/widgets.dart/reservation_details_widgets.dart';

class OrderDetails extends StatefulWidget {
  final OrderInfoModel details;
  final bool isNew;
  const OrderDetails({super.key, required this.details, required this.isNew});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final _priceKey = GlobalKey<FormFieldState<String>>();
  final _otherDriverKey = GlobalKey<FormFieldState<String>>();
  late TextEditingController _priceController;
  bool _isDriver = true;

  @override
  void initState() {
    _priceController = TextEditingController(
        text:
            widget.details.price != null ? '\$ ${widget.details.price}' : null)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.isNew);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReservationDetailsPassengerInfo(
                  info: widget.details.passengerInfo,
                ),
                const SizedBox(height: 16),
                ReservationDetailsRoadInformation(
                  details: widget.details.rideDetails,
                ),
                const SizedBox(
                  height: 16,
                ),
                ReservationDetailsPickup(
                  details: widget.details.rideDetails,
                ),
                const SizedBox(height: 16),
                ReservationDetailsDestination(
                  details: widget.details.rideDetails,
                ),
                const SizedBox(height: 16),
                if (widget.details.additionalInfo != null)
                  ReservationDetailsAdditionalInfo(
                    info: widget.details.additionalInfo!,
                  ),
                const SizedBox(height: 16),
                if (widget.details.paymentDetails != null)
                  ReservationDetailsPaymentDetails(
                      details: widget.details.paymentDetails!),
                const SizedBox(height: 32),
                AppCheckbox(
                  text: "I'm a driver",
                  initialValue: _isDriver,
                  onChanged: (value) {
                    setState(() {
                      _isDriver = value;
                    });
                  },
                ),
                const SizedBox(height: 32),
                AppTextFormField(
                  fieldKey: _priceKey,
                  label: 'Price, \$',
                  required: false,
                  hint: '\$',
                  name: 'price',
                  enabled: widget.isNew,
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  formatter: CurrencyTextInputFormatter(
                    decimalDigits: 1,
                    symbol: '\$ ',
                  ),
                ),
                if (!_isDriver)
                  Column(
                    children: [
                      const SizedBox(height: 32),
                      AppDropdown(
                        label: 'Select other driver',
                        fieldKey: _otherDriverKey,
                        enabled: widget.isNew,
                        items: state.drivers.map((e) => e.name!).toList(),
                      ),
                    ],
                  ),
                const SizedBox(height: 32),
                if (widget.isNew)
                  Column(
                    children: [
                      SizedBox(
                        width: context.width,
                        child: ElevatedButton(
                          onPressed: () {
                            final driver = state.drivers.firstWhere((element) =>
                                element.name ==
                                _otherDriverKey.currentState!.value);
                            context.read<OrdersBloc>().add(
                                  ConfirmOrder(
                                    orderId: widget.details.id,
                                    price: double.tryParse(
                                      _priceController.text.isNotEmpty
                                          ? _priceController.text.split(' ')[1]
                                          : '',
                                    ),
                                    driverId: driver.id,
                                  ),
                                );
                            context.pop();
                          },
                          child: const Text(
                            'Confirm',
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: context.width,
                        child: TextButton(
                          style: context.theme.textButtonTheme.style!.copyWith(
                            foregroundColor:
                                const MaterialStatePropertyAll(AppColors.red),
                            overlayColor: const MaterialStatePropertyAll(
                                AppColors.lightRed),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Reject',
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  SizedBox(
                    width: context.width,
                    child: ElevatedButton(
                      onPressed: () {
                        // context.read<OrdersBloc>().add(event);
                      },
                      child: const Text(
                        'Start a trip',
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
