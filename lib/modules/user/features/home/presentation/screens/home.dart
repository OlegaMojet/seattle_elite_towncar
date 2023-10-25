import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/vehicles/vehicles_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/widgets/vehicle_block.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_state.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/reservations_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/reservations_event.dart';

import '../bloc/bloc.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  void didChangeDependencies() {
    context.read<UserProfileBloc>().add(FetchProfile());
    context.read<UserLocationBloc>().add(FetchNewLocation());
    context.read<VehiclesBloc>().stream.listen((event) {
      if (event.cars != null) {
        context
            .read<ReservationsBloc>()
            .add(FetchReservations(cars: event.cars));
      }
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        centerTitle: false,
        title: BlocBuilder<UserProfileBloc, UserProfileState>(
          builder: (context, state) {
            if (state is FetchedUserProfileState) {
              final name = state.profile.name;

              return AutoSizeText(
                'Hello${name != null ? ', ${name.split(' ').length == 2 ? name.split(' ').first : name}' : ''}! Select option, please.',
                maxLines: 1,
                style: context.theme.textTheme.titleLarge,
              );
            }
            return AutoSizeText(
              'Hello! Select option, please.',
              maxLines: 1,
              style: context.theme.textTheme.titleLarge,
            );
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size(context.width, 36),
          child: SizedBox(
            height: 36,
            child: BlocBuilder<VehiclesBloc, VehiclesState>(
              builder: (context, state) {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: Strings.carType.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        context.read<VehiclesBloc>().add(FilterVehicles(
                            vehicleType: index == 0 ? null : index - 1));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        decoration: BoxDecoration(
                          boxShadow: [
                            if (state.vehicleType == index - 1 ||
                                (state.vehicleType == null && index == 0))
                              BoxShadow(
                                color: AppColors.mediumBlue.withOpacity(0.16),
                                blurRadius: 16,
                                spreadRadius: 2,
                              )
                          ],
                          color: (state.vehicleType == null && index == 0)
                              ? AppColors.lightBlue
                              : state.vehicleType == index - 1
                                  ? AppColors.lightBlue
                                  : AppColors.lightGray.withOpacity(0.5),
                        ),
                        child: Text(
                          Strings.carType[index],
                          style: context.theme.textTheme.labelLarge!.copyWith(
                            color: (state.vehicleType == null && index == 0)
                                ? AppColors.mediumBlue
                                : state.vehicleType == index - 1
                                    ? AppColors.mediumBlue
                                    : AppColors.gray,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                );
              },
            ),
          ),
        ),
      ),
      body: BlocBuilder<VehiclesBloc, VehiclesState>(
        builder: (context, state) {
          if (state.cars != null) {
            final cars = state.vehicleType == null
                ? state.cars
                : state.cars!
                    .where(
                        (element) => element.vehicleType == state.vehicleType)
                    .toList();
            return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 274,
              ),
              itemCount: cars!.length,
              itemBuilder: (context, index) {
                return VehicleBlock(
                  vehicle: cars[index],
                  onTap: () async {
                    context.pushLocation(
                      AppRouter.startForm,
                      extra: cars[index],
                    );
                  },
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
