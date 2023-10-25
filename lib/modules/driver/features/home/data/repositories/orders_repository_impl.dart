import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/datasources/orders_datasource.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/repositories/orders_repository.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/passenger_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/ride_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/change_status_quote.dart';

class OrdersRepositoryImpl extends OrdersRepository {
  final _datasource = OrdersDatasourceImpl();
  @override
  Future<void> cancelOrder(ChangeStatusQuoteModel changeStatusQuote) {
    return _datasource.cancelOrder(changeStatusQuote);
  }

  @override
  Future<List<OrderInfoModel>?> getOrders(GetQuotesByModel getQuotesBy, bool isMain) async {
    final reservations = await _datasource.getOrders(getQuotesBy) ?? [];
    return reservations
        .map(
          (e) => OrderInfoModel(
            id: e.quoteId!,
            orderStatus: OrderStatus.values[e.driverStatus],
            passengerInfo: PassengerInfoModel(
              fullName: e.name,
              companyName: e.companyName,
              daytimePhone: '${e.daytimePhoneNumber}',
              phone: '${e.phoneNumber}',
              email: e.email,
              address: e.homeAddress,
            ),
            rideDetails: RideDetailsModel(
              vehicle: CarModel(carId: e.carId),
              serviceType: e.serviceType,
              dateTime: DateTime.parse(e.dateTime).toLocal(),
              address: e.homeAddress,
              pickupAddress: e.pickupInfo.address,
              pickupAirportNameOrCode: e.pickupInfo.airportName,
              pickupAirlineName: e.pickupInfo.airlineName,
              pickupFlightNumber: e.pickupInfo.flightNumber,
              pickupType: e.pickupInfo.addressType,
              destinationAddress: e.destinationInfo.address,
              destinationAirportNameOrCode: e.destinationInfo.airportName,
              destinationAirlineName: e.destinationInfo.airlineName,
              destinationFlightNumber: e.destinationInfo.flightNumber,
              destinationType: e.destinationInfo.addressType,
              numOfBags: e.numOfBags,
              numOfPass: e.numOfPass,
            ),
            additionalInfo: e.additionalInfo,
            price: e.price,
          ),
        )
        .toList();
  }

  @override
  Future<List<DriverProfile>> getDrivers() {
    return _datasource.getDrivers();
  }

  @override
  Future<void> updateOrder(Map<String, dynamic> data) {
    return _datasource.updateOrder(data);
  }
}
