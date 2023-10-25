import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_event.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_state.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/widgets/vehicle_block.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/vehicle.dart';

import '../../bloc/fleet/fleet_bloc.dart';

class MyFleetScreen extends StatefulWidget {
  const MyFleetScreen({super.key});

  @override
  State<MyFleetScreen> createState() => _MyFleetScreenState();
}

class _MyFleetScreenState extends State<MyFleetScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<FleetBloc>().add(FetchFleet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: AppBackButton(onTap: context.pop),
        leadingWidth: 90,
      ),
      body: BlocBuilder<FleetBloc, FleetState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 32, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My fleet',
                          style: context.theme.textTheme.headlineSmall,
                        ),
                        const SizedBox(width: 4),
                        if (state.myCars.isNotEmpty)
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.mediumBlue,
                            child: Text(
                              state.myCars.length.toString(),
                              style: context.theme.textTheme.labelSmall!
                                  .copyWith(
                                      color: AppColors.white, height: 1.2),
                            ),
                          )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed(
                          AppRouter.driverMyFleetAddEditNew,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          children: [
                            Assets.icons.plus.svg(),
                            const SizedBox(width: 8),
                            const Text('Add new'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 164 / 218,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: List.generate(
                    state.myCars.length,
                    (index) => FleetVehicleBlock(
                      onTap: () {
                        // context.pushNamed(
                        //   AppRouter.driverMyFleetAddEditNew,
                        //   extra: Car(
                        //     image: Assets.images.auto.path,
                        //     vehicleType: 0,
                        //     carName: 'Volvo XC90',
                        //     numOfPass: 4,
                        //     numOfBags: 2,
                        //   ),
                        // );
                      },
                      car: Car(
                        carId: state.myCars[index].carId,
                        image: state.myCars[index].image,
                        vehicleType: state.myCars[index].vehicleType,
                        carName: state.myCars[index].carName,
                        numOfPass: state.myCars[index].numOfPass,
                        numOfBags: state.myCars[index].numOfBags,
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
