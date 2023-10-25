import 'package:firebase_auth/firebase_auth.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/repositories/orders_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/datasources/vehicles_datasource.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/repositories/vehicles_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';

import 'orders_event.dart';
import 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final _repository = OrdersRepositoryImpl();
  final _carsRepository =
      VehiclesRepositoryImpl(vehiclesDataSource: VehiclesDataSourceImpl());
  OrdersBloc() : super(OrdersState()) {
    on(_fetchOrders);
    on(_confirmOrder);
  }

  _fetchOrders(FetchOrders event, Emitter<OrdersState> emit) async {
    final userId = FirebaseAuth.instance.currentUser?.uid;
    final orders = await _repository.getOrders(
        GetQuotesByModel(by: 'driverId', val: userId), true);
    final cars = await _carsRepository.getCars();
    final newOrders = List<OrderInfoModel>.empty(growable: true);
    if (orders != null) {
      for (final element in orders) {
        final car = cars?.firstWhere((carElement) =>
            carElement.carId == element.rideDetails.vehicle.carId);
        newOrders.add(
          element.copyWith(
            rideDetails: element.rideDetails.copyWith(
              vehicle: car!.toCarModel,
            ),
          ),
        );
      }
    }
    print(newOrders);
    final drivers = await _repository.getDrivers();
    emit(state.copyWith(orders: newOrders, drivers: drivers));
  }

  _confirmOrder(ConfirmOrder event, Emitter<OrdersState> emit) async {
    await _repository.updateOrder({
      'quoteId': event.orderId,
      'driverId': event.driverId,
      'price': event.price,
    });
    add(FetchOrders());
  }
}
