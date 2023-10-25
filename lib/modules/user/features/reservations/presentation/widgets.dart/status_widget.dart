import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

import '../../../../../../core/utils/utils.dart';

class StatusWidget extends StatelessWidget {
  final ReservationStatus status;
  const StatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      color: status.backgroundColor,
      child: Text(
        status.text,
        style: context.theme.textTheme.labelMedium!.copyWith(
          color: status.textColor,
        ),
      ),
    );
  }
}
