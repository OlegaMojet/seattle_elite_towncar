import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/reservations_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/widgets.dart/reservation_cancel_bottom_sheet.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/widgets.dart/reservation_details_widgets.dart';

class ReservationDetails extends StatelessWidget {
  final ReservationInfo details;
  const ReservationDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ReservationDetailsPassengerInfo(
              info: details.passengerInfo,
            ),
            const SizedBox(height: 16),
            ReservationDetailsRoadInformation(
              details: details.rideDetails,
            ),
            const SizedBox(
              height: 16,
            ),
            ReservationDetailsPickup(
              details: details.rideDetails,
            ),
            const SizedBox(height: 16),
            ReservationDetailsDestination(
              details: details.rideDetails,
            ),
            const SizedBox(height: 16),
            if (details.additionalInfo != null)
              ReservationDetailsAdditionalInfo(
                info: details.additionalInfo!,
              ),
            const SizedBox(height: 16),
            if (details.paymentDetails != null)
              ReservationDetailsPaymentDetails(
                  details: details.paymentDetails!),
            const SizedBox(height: 16),
            if (details.status != ReservationStatus.canceled)
              SizedBox(
                width: context.width,
                child: TextButton(
                  style: context.theme.textButtonTheme.style!.copyWith(
                    foregroundColor:
                        const MaterialStatePropertyAll(AppColors.red),
                    overlayColor:
                        const MaterialStatePropertyAll(AppColors.lightRed),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      barrierColor: AppColors.black.withOpacity(0.8),
                      context: context,
                      builder: (context) => ReservationCancelBottomSheet(
                        onTapYes: () async {
                          context.read<ReservationsBloc>().add(
                                CancelReservation(
                                  quoteId: details.quoteId,
                                  clientId:
                                      FirebaseAuth.instance.currentUser!.uid,
                                  driverId: '0',
                                  status: ReservationStatus.canceled.index,
                                ),
                              );
                          context.pop();
                          context.pushReplacement(AppRouter.userReservations);
                        },
                      ),
                    );
                  },
                  child: const Text('Cancel reservation'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
