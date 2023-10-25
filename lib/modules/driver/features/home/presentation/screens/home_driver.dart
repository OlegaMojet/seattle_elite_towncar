import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/widgets/driver_order_info_widget.dart';

class DriverHomeDriver extends StatefulWidget {
  const DriverHomeDriver({super.key});

  @override
  State<DriverHomeDriver> createState() => _DriverHomeDriverState();
}

class _DriverHomeDriverState extends State<DriverHomeDriver> {
  @override
  void initState() {
    context.read<OrdersBloc>().add(FetchOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        final orders = state.orders
            .where((element) =>
                element.orderStatus != OrderStatus.canceled ||
                element.orderStatus != OrderStatus.done)
            .toList();
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 0,
            centerTitle: false,
            title: Row(
              children: [
                Text(
                  'Orders',
                  style: context.theme.textTheme.titleLarge,
                ),
                if (orders.isNotEmpty)
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.mediumBlue,
                    child: Text(
                      '${orders.isEmpty ? 0 : orders.length}',
                      style: context.theme.textTheme.labelSmall!
                          .copyWith(color: AppColors.white, height: 1.2),
                    ),
                  )
              ],
            ),
          ),
          body: Stack(
            children: [
              if (orders.isEmpty)
                Align(
                  alignment: const Alignment(0, -0.4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.bell.svg(),
                      const SizedBox(height: 8),
                      Text(
                        'No active orders yet',
                        style: context.theme.textTheme.titleMedium!.copyWith(
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
                        itemCount: orders.length,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) => DriverOrderInfoWidget(
                          info: orders[index],
                          isNew: false,
                          onTapStart: () {},
                          onTapSee: () {
                            context.pushNamed(
                              AppRouter.driverOrderDetails,
                              extra: (orders[index], false),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
