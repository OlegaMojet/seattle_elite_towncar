import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';

part 'orders_state.freezed.dart';

@Freezed(copyWith: true)
class OrdersState with _$OrdersState {
  factory OrdersState({
    @Default([]) List<OrderInfoModel> orders,
    @Default([]) List<DriverProfile> drivers,
  }) = _OrdersState;
}