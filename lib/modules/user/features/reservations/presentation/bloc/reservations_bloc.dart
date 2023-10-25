import 'package:firebase_auth/firebase_auth.dart';
import 'package:seattle_elite_towncar/core/services/notification_service.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/repositories/reservations_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'reservations_event.dart';
import 'reservations_state.dart';

class ReservationsBloc extends Bloc<ReservationsEvent, ReservationsState> {
  final _reservationRepositoryImpl = ReservationRepositoryImpl();
  final _notificationService = NotificationService();

  ReservationsBloc() : super(ReservationsState()) {
    on(_fetchReservations);
    on(_onAddReservation);
    on(_cancelReservation);
  }

  _fetchReservations(
      FetchReservations event, Emitter<ReservationsState> emit) async {
    emit(state.copyWith(reservations: null));
    if (event.cars != null) {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      final reservations = await _reservationRepositoryImpl.getReservations(
        GetQuotesByModel(
          by: GetQuotesByEnum.clientId.name,
          val: userId!,
        ),
        event.cars!,
      );
      if (reservations != null) {
        final notif = await _notificationService.getActiveNotifications();
        final notifications = notif.map((e) => e.id);

        for (final element in reservations) {
         if (!notifications.contains(element.quoteId)) {
            // await _notificationService.scheduleNotification(element.quoteId, title, body, eventDate, payload)
         }
        
        }
      }

      emit(state.copyWith(reservations: reservations));
    }
  }

  _onAddReservation(
      AddReservation event, Emitter<ReservationsState> emit) async {

    try {
      if (event.formData.isReservation) {
        
        await _reservationRepositoryImpl.addReservation(event.formData);
      } else {
        await _reservationRepositoryImpl.addQuote(event.formData);
      }
    } catch (e) {
      print(e);
    }
  }

  _cancelReservation(
      CancelReservation event, Emitter<ReservationsState> emit) async {
    await _reservationRepositoryImpl.cancelReservation(
      quoteId: event.quoteId,
      status: event.status,
    );
    final list = List<ReservationInfo>.from(state.reservations!);

    list.removeWhere((element) => element.quoteId == event.quoteId);
    emit(state.copyWith(reservations: list));
  }
}
