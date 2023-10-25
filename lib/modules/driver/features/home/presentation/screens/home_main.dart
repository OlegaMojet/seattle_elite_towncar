import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';
import 'package:seattle_elite_towncar/core/utils/extensions.dart';
import 'package:seattle_elite_towncar/core/utils/strings.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/widgets/driver_order_info_widget.dart';

import '../bloc/bloc.dart';

class DriverMainHome extends StatefulWidget {
  const DriverMainHome({super.key});

  @override
  State<DriverMainHome> createState() => _DriverMainHomeState();
}

class _DriverMainHomeState extends State<DriverMainHome> {
  int tab = 0;

  @override
  void didChangeDependencies() {
    context.read<OrdersBloc>().add(FetchOrders());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        
        final active = state.orders
            .where((element) => element.orderStatus == OrderStatus.active)
            .toList();
        final newOrders = state.orders
            .where((element) => element.orderStatus == OrderStatus.newOrder)
            .toList();
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              leadingWidth: 0,
              centerTitle: false,
              title: Text(
                'Orders',
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
                                if (active.isNotEmpty)
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: tab == 0
                                        ? AppColors.mediumBlue
                                        : AppColors.gray,
                                    child: Text(
                                      '${active.isEmpty ? 4 : active.length}',
                                      style: context.theme.textTheme.labelSmall!
                                          .copyWith(
                                        color: AppColors.white,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('New'),
                                const SizedBox(width: 2),
                                if (newOrders.isNotEmpty)
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: tab == 1
                                        ? AppColors.mediumBlue
                                        : AppColors.gray,
                                    child: Text(
                                      '${newOrders.isEmpty ? 4 : newOrders.length}',
                                      style: context.theme.textTheme.labelSmall!
                                          .copyWith(
                                              color: AppColors.white,
                                              height: 1.2),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              clipBehavior: Clip.none,
              children: [
                Stack(
                  children: [
                    if (active.isEmpty)
                      Align(
                        alignment: const Alignment(0, -0.4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Assets.icons.bell.svg(),
                            const SizedBox(height: 8),
                            Text(
                              'No active orders yet',
                              style:
                                  context.theme.textTheme.titleMedium!.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              itemCount: active.length,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(height: 16),
                              itemBuilder: (context, index) =>
                                  DriverOrderInfoWidget(
                                info: active[index],
                                isNew: false,
                                onTapStart: () {},
                                onTapSee: () {
                                  context.pushNamed(
                                    AppRouter.driverOrderDetails,
                                    extra: (active[index], false),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                Stack(
                  children: [
                    if (newOrders.isEmpty)
                      Align(
                        alignment: const Alignment(0, -0.4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Assets.icons.bell.svg(),
                            const SizedBox(height: 8),
                            Text(
                              'No new orders yet',
                              style:
                                  context.theme.textTheme.titleMedium!.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      ListView.separated(
                        itemCount: newOrders.length,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          print(
                              newOrders[index].rideDetails.vehicle.vehicleType);
                          print(newOrders[index].rideDetails.vehicle.carName);

                          return DriverOrderInfoWidget(
                            info: newOrders[index],
                            onTapStart: () {},
                            onTapSee: () {
                              context.pushNamed(
                                AppRouter.driverOrderDetails,
                                extra: (newOrders[index], true),
                              );
                            },
                          );
                        },
                      ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
