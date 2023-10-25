import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_state.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/datasources/reservation_datasource.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/repositories/reservation_repository.dart';

class ReservationRepositoryImpl extends ReservationRepository {
  final _reservationDatasourceImpl = ReservationDatasourceImpl();

  @override
  Future<List<ReservationInfo>?> getReservations(
          GetQuotesByModel by, List<Car> cars) async =>
      await _reservationDatasourceImpl.getReservations(by, cars);

  @override
  Future<void> addQuote(FormState formData) async =>
      _reservationDatasourceImpl.addQuote(formData);

  @override
  Future<void> addReservation(FormState formData) async =>
      _reservationDatasourceImpl.addReservation(formData);

  @override
  Future<void> cancelReservation(
      {required int quoteId,
      required int status}) async {
    return _reservationDatasourceImpl.cancelReservation(
      quoteId: quoteId,
      status: status,
    );
  }
}
