import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_state.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

abstract class ReservationRepository {
  Future<List<ReservationInfo>?> getReservations(
      GetQuotesByModel by, List<Car> cars);

  Future<void> addReservation(FormState formData);
  Future<void> addQuote(FormState formData);

  Future<void> cancelReservation({
    required int quoteId,
    required int status,
  });
}
