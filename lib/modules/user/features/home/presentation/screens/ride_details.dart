import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_checkbox.dart';
import 'package:seattle_elite_towncar/core/widgets/app_date_picker.dart';
import 'package:seattle_elite_towncar/core/widgets/app_dropdown.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/app_time_picker.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/core/widgets/big_radio_buttons_block.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

import '../bloc/bloc.dart';

class RideDetailsScreen extends StatefulWidget {
  final bool isReservation;
  final Car vehicle;
  const RideDetailsScreen(
      {super.key, required this.isReservation, required this.vehicle});

  @override
  State<RideDetailsScreen> createState() => _RideDetailsScreenState();
}

class _RideDetailsScreenState extends State<RideDetailsScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _serviceTypeDropdownKey = GlobalKey<FormFieldState<String>>();
  final _dateKey = GlobalKey<FormFieldState<DateTime>>();
  final _timeKey = GlobalKey<FormFieldState<DateTime>>();
  final _pickupAddressKey = GlobalKey<FormFieldState<String>>();
  final _numOfBagsKey = GlobalKey<FormFieldState<String>>();
  final _numOfPassKey = GlobalKey<FormFieldState<String>>();
  final _pickupAirportNameKey = GlobalKey<FormFieldState<String>>();
  final _pickupAirlineNameKey = GlobalKey<FormFieldState<String>>();
  final _pickupFlightNumberKey = GlobalKey<FormFieldState>();
  final _pickupTypeKey = GlobalKey<FormFieldState>();
  final _destinationAddressKey = GlobalKey<FormFieldState<String>>();
  final _destinationAirportNameKey = GlobalKey<FormFieldState<String>>();
  final _destinationAirlineNameKey = GlobalKey<FormFieldState<String>>();
  final _destinationFlightNumberKey = GlobalKey<FormFieldState<String>>();
  final _destinationTypeKey = GlobalKey<FormFieldState>();

  int pickupType = 0;
  int destinationType = 0;
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ride details',
                style: context.theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              AppDropdown(
                label: 'Service type*',
                fieldKey: _serviceTypeDropdownKey,
                required: true,
                items: Strings.serviceType,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AppDatePicker(
                      label: 'Date*',
                      fieldKey: _dateKey,
                      required: true,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: AppTimePicker(
                      label: 'Time*',
                      fieldKey: _timeKey,
                      required: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                'Pickup:',
                textAlign: TextAlign.start,
                style: context.theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              AppCheckbox(
                text: 'Use the address information listed above',
                initialValue: false,
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              BigRadioButtonsBlock(
                onChoosed: (value) {
                  setState(() {
                    pickupType = value;
                  });
                },
                value: pickupType,
                firstIcons: (
                  Assets.icons.streetAddress.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                  ),
                  Assets.icons.streetAddress.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  ),
                ),
                secondIcons: (
                  Assets.icons.airport.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                  ),
                  Assets.icons.airport.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  ),
                ),
                items: const [
                  'Street address',
                  'Airport',
                ],
              ),
              const SizedBox(height: 32),
              if (pickupType == 0)
                AppTextFormField(
                  fieldKey: _pickupAddressKey,
                  required: true,
                  label: 'Address*',
                  hint: 'Enter address',
                  keyboardType: TextInputType.streetAddress,
                  name: 'pickup_address',
                )
              else
                Column(
                  children: [
                    AppTextFormField(
                      fieldKey: _pickupAirportNameKey,
                      required: true,
                      label: 'Airport name or code*',
                      hint: 'Enter airport name or code',
                      keyboardType: TextInputType.text,
                      name: 'pickup_airport',
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            fieldKey: _pickupAirlineNameKey,
                            label: 'Airline name',
                            required: false,
                            hint: 'Airline name',
                            name: 'pickup_airline',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: AppTextFormField(
                            fieldKey: _pickupFlightNumberKey,
                            label: 'Flight #',
                            required: false,
                            hint: 'Flight #',
                            name: 'pickup_flight',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: 32),
              Text(
                'Destination:',
                textAlign: TextAlign.start,
                style: context.theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              BigRadioButtonsBlock(
                items: const [
                  'Street address',
                  'Airport',
                ],
                onChoosed: (value) {
                  setState(() {
                    destinationType = value;
                  });
                },
                value: destinationType,
                firstIcons: (
                  Assets.icons.streetAddress.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                  ),
                  Assets.icons.streetAddress.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  ),
                ),
                secondIcons: (
                  Assets.icons.airport.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                  ),
                  Assets.icons.airport.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              if (destinationType == 0)
                AppTextFormField(
                  fieldKey: _destinationAddressKey,
                  required: true,
                  label: 'Address*',
                  hint: 'Enter address',
                  keyboardType: TextInputType.streetAddress,
                  name: 'destination_address',
                )
              else
                Column(
                  children: [
                    AppTextFormField(
                      fieldKey: _destinationAirportNameKey,
                      required: true,
                      label: 'Airport name or code*',
                      hint: 'Enter airport name or code',
                      keyboardType: TextInputType.streetAddress,
                      name: 'destination_airport',
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            fieldKey: _destinationAirlineNameKey,
                            label: 'Airline name',
                            required: false,
                            hint: 'Airline name',
                            name: 'pickup_airline',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: AppTextFormField(
                            fieldKey: _destinationFlightNumberKey,
                            label: 'Flight #',
                            required: false,
                            hint: 'Flight #',
                            name: 'pickup_flight',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: 32),
              SizedBox(
                width: context.width,
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState
                        ?.saveAndValidate(autoScrollWhenFocusOnInvalid: true);
                    if (_formKey.currentState!.isValid) {
                      context.read<FormBloc>().add(AddRideDetails(
                            rideDetails: RideDetails(
                              vehicle: widget.vehicle,
                              serviceType: Strings.serviceType.indexOf(
                                  _serviceTypeDropdownKey.currentState!.value!),
                              dateTime: DateTime(
                                _dateKey.currentState!.value!.year,
                                _dateKey.currentState!.value!.month,
                                _dateKey.currentState!.value!.day,
                                _timeKey.currentState!.value!.hour,
                                _timeKey.currentState!.value!.minute,
                              ),
                              address:
                                  _pickupAddressKey.currentState?.value ?? '',
                              numOfBags: int.tryParse(
                                  _numOfBagsKey.currentState?.value ?? ''),
                              numOfPass: int.tryParse(
                                  _numOfPassKey.currentState?.value ?? ''),
                              pickupAddress:
                                  _pickupAddressKey.currentState?.value,
                              pickupAirportNameOrCode:
                                  _pickupAirportNameKey.currentState?.value,
                              pickupAirlineName: _pickupAirlineNameKey.currentState?.value,
                              pickupFlightNumber: _pickupFlightNumberKey.currentState?.value,
                              pickupType: pickupType,
                              destinationAddress:
                                  _destinationAddressKey.currentState?.value,
                              destinationAirportNameOrCode:
                                  _destinationAirportNameKey
                                      .currentState?.value,
                              destinationAirlineName: _pickupAirlineNameKey.currentState?.value,
                              destinationFlightNumber: _pickupFlightNumberKey.currentState?.value,
                              destinationType: destinationType,
                            ),
                          ));
                      context.pushNamed(
                        widget.isReservation
                            ? AppRouter.additionalInfo
                            : AppRouter.briefDescription,
                      );
                    }
                  },
                  child: Text(
                    widget.isReservation
                        ? 'Go to additional information'
                        : 'Go to brief description',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
