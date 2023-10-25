import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/change_status_quote.dart';

abstract class OrdersRepository {
  Future<List<OrderInfoModel>?> getOrders(GetQuotesByModel getQuotesBy, bool isMain);
  Future<void> cancelOrder(ChangeStatusQuoteModel changeStatusQuote);
  Future<List<DriverProfile>> getDrivers();

  Future<void> updateOrder(Map<String, dynamic> data);
  
}
