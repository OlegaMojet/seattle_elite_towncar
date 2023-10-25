import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/quote_reservation.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/change_status_quote.dart';

abstract class OrdersDatasource {
  Future<List<QuoteReservationModel>?> getOrders(GetQuotesByModel getQuotesBy);
  Future<void> cancelOrder(ChangeStatusQuoteModel changeStatusQuote);

  Future<List<DriverProfileModel>> getDrivers();

  Future<void> updateOrder(Map<String, dynamic> data);
}

class OrdersDatasourceImpl extends OrdersDatasource {
  @override
  Future<ClientProfileModel> cancelOrder(
      ChangeStatusQuoteModel changeStatusQuote) async {
    return ApiService.instance.restClient.changeStatusQuote(changeStatusQuote);
  }

  @override
  Future<List<QuoteReservationModel>?> getOrders(
      GetQuotesByModel getQuotesBy) async {
    final newReservations =
        await ApiService.instance.restClient.getReservations(
      GetQuotesByModel(
        by: 'driverStatus',
        val: '0',
      ),
    );
    final activeReservations =
        await ApiService.instance.restClient.getReservations(
      GetQuotesByModel(
        by: 'driverStatus',
        val: '3',
      ),
    );
    final cars = await ApiService.instance.restClient.getCars();

    if (newReservations != null && activeReservations != null) {
      newReservations.addAll(activeReservations);
      return newReservations;
    } else if (newReservations != null && activeReservations == null) {
      return newReservations;
    } else {
      return activeReservations;
    }
  }

  @override
  Future<List<DriverProfileModel>> getDrivers() {
    return ApiService.instance.restClient.getDriversList();
  }

  @override
  Future<void> updateOrder(Map<String, dynamic> data) {
    return ApiService.instance.restClient.updateQuote(data);
  }
}
