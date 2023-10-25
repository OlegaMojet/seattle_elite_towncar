import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/bloc/nav_bar_cubit.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/vehicles/vehicles_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/widgets.dart/reservation_info_widget.dart';

import '../bloc/bloc.dart';

class UserReservationsScreen extends StatefulWidget {
  const UserReservationsScreen({super.key});

  @override
  State<UserReservationsScreen> createState() => _UserReservationsScreenState();
}

class _UserReservationsScreenState extends State<UserReservationsScreen> {
  int tab = 0;

  @override
  void didChangeDependencies() {
    context
        .read<ReservationsBloc>()
        .add(FetchReservations(cars: context.read<VehiclesBloc>().state.cars));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<ReservationsBloc, ReservationsState>(
          builder: (context, state) {
        final active = state.reservations
            ?.where((element) =>
                element.status == ReservationStatus.active ||
                element.status == ReservationStatus.reserved)
            .toList();
        final archive = state.reservations
            ?.where((element) =>
                element.status == ReservationStatus.done ||
                element.status == ReservationStatus.canceled)
            .toList();
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 0,
            centerTitle: false,
            title: Text(
              'Reservation',
              style: context.theme.textTheme.titleLarge,
            ),
            bottom: PreferredSize(
              preferredSize: Size(context.width, 50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Divider(
                      color: AppColors.lightGray,
                      thickness: 1,
                      height: 1,
                    ),
                    TabBar(
                      unselectedLabelColor: AppColors.gray,
                      indicatorColor: AppColors.mediumBlue,
                      indicatorWeight: 1,
                      labelColor: AppColors.mediumBlue,
                      onTap: (value) {
                        setState(() {
                          tab = value;
                        });
                      },
                      labelStyle: context.theme.textTheme.labelLarge,
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Active'),
                              const SizedBox(width: 2),
                              if (active != null && active.isNotEmpty)
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: tab == 0
                                      ? AppColors.mediumBlue
                                      : AppColors.gray,
                                  child: Text(
                                    '${active.length}',
                                    style: context.theme.textTheme.labelSmall!
                                        .copyWith(
                                            color: AppColors.white,
                                            height: 1.2),
                                  ),
                                )
                            ],
                          ),
                        ),
                        const Tab(
                          text: 'Archived',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: state.reservations != null
              ? TabBarView(
                  clipBehavior: Clip.none,
                  children: [
                    Stack(
                      children: [
                        if (active!.isEmpty)
                          Align(
                            alignment: const Alignment(0, -0.4),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.icons.vehiclePlaceholder.svg(),
                                const SizedBox(height: 8),
                                Text(
                                  'No active reservation',
                                  style: context.theme.textTheme.titleMedium!
                                      .copyWith(
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                SizedBox(
                                  width: context.width - 32,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.read<NavbarCubit>().changePage(0);
                                      context.go(AppRouter.userHome);
                                    },
                                    child: const Text(
                                      'Reserve now',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          ListView.separated(
                            itemCount: active.length,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 16),
                            itemBuilder: (context, index) =>
                                ReservationInfoWidget(
                              info: active[index],
                              onTapReserve: () {},
                              onTapSee: () {
                                context.pushNamed(
                                  AppRouter.reservationDetails,
                                  extra: active[index],
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                    Stack(
                      children: [
                        if (archive!.isEmpty)
                          Align(
                            alignment: const Alignment(0, -0.4),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.icons.vehiclePlaceholder.svg(),
                                const SizedBox(height: 8),
                                Text(
                                  'No archive reservation',
                                  style: context.theme.textTheme.titleMedium!
                                      .copyWith(
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                SizedBox(
                                  width: context.width - 32,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.read<NavbarCubit>().changePage(0);
                                      context.go(AppRouter.userHome);
                                    },
                                    child: const Text(
                                      'Reserve now',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          ListView.separated(
                            itemCount: archive.length,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 16),
                            itemBuilder: (context, index) =>
                                ReservationInfoWidget(
                              info: archive[index],
                              onTapReserve: () {},
                              onTapSee: () {
                                context.pushNamed(
                                  AppRouter.reservationDetails,
                                  extra: archive[index],
                                );
                              },
                            ),
                          ),
                      ],
                    )
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        );
      }),
    );
  }
}
