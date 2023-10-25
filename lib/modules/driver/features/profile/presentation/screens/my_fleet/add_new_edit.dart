import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_dropdown.dart';
import 'package:seattle_elite_towncar/core/widgets/app_textfield.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_event.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/widgets/fleet_car_photo_field.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/widgets/remove_vehicle_bottom_sheet.dart';

class AddNewEditFleet extends StatefulWidget {
  final Car? vehicle;
  const AddNewEditFleet({super.key, this.vehicle});

  @override
  State<AddNewEditFleet> createState() => _AddNewEditFleetState();
}

class _AddNewEditFleetState extends State<AddNewEditFleet> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _vehicleTypeKey = GlobalKey<FormFieldState<String>>();
  final _carNameKey = GlobalKey<FormFieldState<String>>();
  final _passNumberKey = GlobalKey<FormFieldState<String>>();
  final _bagsNumberKey = GlobalKey<FormFieldState<String>>();
  late TextEditingController _carNameController;
  late TextEditingController _passNumberController;
  late TextEditingController _bagsNumberController;
  late String? image;

  @override
  void initState() {
    _carNameController = TextEditingController(text: widget.vehicle?.carName);
    _passNumberController =
        TextEditingController(text: widget.vehicle?.numOfPass.toString());
    _bagsNumberController =
        TextEditingController(text: widget.vehicle?.numOfBags.toString());
    image = widget.vehicle?.image;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(onTap: context.pop),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  AppDropdown(
                    label: 'Vehicle type*',
                    fieldKey: _vehicleTypeKey,
                    hint: 'Select vehicle type please',
                    items: Strings.carTypeSingle,
                    required: true,
                    initialValue: widget.vehicle != null
                        ? Strings.carTypeSingle[widget.vehicle!.vehicleType!]
                        : null,
                  ),
                  const SizedBox(height: 32),
                  AppTextFormField(
                    fieldKey: _carNameKey,
                    label: 'Car name*',
                    required: true,
                    hint: 'Enter car name please',
                    name: 'car_name',
                    controller: _carNameController,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          fieldKey: _bagsNumberKey,
                          keyboardType: TextInputType.number,
                          label: 'Number of bags*',
                          required: true,
                          hint: 'Enter number',
                          name: 'bags_number',
                          controller: _bagsNumberController,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: AppTextFormField(
                          fieldKey: _passNumberKey,
                          keyboardType: TextInputType.number,
                          label: 'Number of pass*',
                          required: true,
                          hint: 'Enter number',
                          name: 'pass_number',
                          controller: _passNumberController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  FleetCarPhotoField(
                    onSelectImage: (value) async {
                      setState(() {
                        image = base64Encode(value);
                      });
                    },
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: context.width,
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState?.saveAndValidate();
                        if (_formKey.currentState!.isValid) {
                          context.read<FleetBloc>().add(
                                AddCar(
                                  car: Car(
                                    carId: widget.vehicle?.carId,
                                    carName: _carNameController.text,
                                    numOfBags:
                                        int.parse(_bagsNumberController.text),
                                    numOfPass:
                                        int.parse(_passNumberController.text),
                                    vehicleType: Strings.carTypeSingle.indexOf(
                                      _vehicleTypeKey.currentState!.value!,
                                    ),
                                    image: image,
                                  ),
                                ),
                              );
                          context.pop();
                        }
                      },
                      child: const Text('Save'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (widget.vehicle != null)
                    SizedBox(
                      width: context.width,
                      child: TextButton(
                        style: context.theme.textButtonTheme.style!.copyWith(
                          overlayColor: const MaterialStatePropertyAll(
                              AppColors.lightRed),
                          foregroundColor:
                              const MaterialStatePropertyAll(AppColors.red),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            barrierColor: AppColors.black.withOpacity(0.8),
                            context: context,
                            builder: (context) => RemoveVehicleBottomSheet(
                              onTapYes: () {
                                context.read<FleetBloc>().add(
                                    RemoveCar(carId: widget.vehicle!.carId!));
                              },
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icons.trash.svg(),
                            const SizedBox(width: 8),
                            const Text('Delete'),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
