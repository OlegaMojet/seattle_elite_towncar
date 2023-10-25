import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/driver/features/location/presentation/widgets/reservation_info_widget.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/widgets/reservation_info_widget.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:collection/collection.dart';

import '../../../../../user/features/reservations/presentation/bloc/bloc.dart';

class DriverLocationScreen extends StatefulWidget {
  const DriverLocationScreen({super.key});

  @override
  State<DriverLocationScreen> createState() => _DriverLocationScreenState();
}

class _DriverLocationScreenState extends State<DriverLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        centerTitle: false,
        title: Text(
          'Location',
          style: context.theme.textTheme.titleLarge,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: context.height * 0.5,
            child: FlutterMap(
              options: MapOptions(
                interactiveFlags: InteractiveFlag.pinchZoom |
                    InteractiveFlag.drag |
                    InteractiveFlag.pinchMove,
                maxZoom: 17,
                rotationWinGestures: MultiFingerGesture.none,
                rotationThreshold: 0,
                center: const LatLng(59.916225, 30.512303),
                minZoom: 2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.taxi.limosoft',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: const LatLng(59.916225, 30.512303),
                      builder: (context) => Assets.icons.markerPass.svg(),
                      height: 58,
                      width: 40,
                    ),
                    Marker(
                      point: const LatLng(60.072838, 30.340178),
                      builder: (context) => Assets.icons.markerCar.svg(),
                      height: 58,
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          BlocBuilder<ReservationsBloc, ReservationsState>(
            builder: (context, state) {
              final currentReservation = state.reservations?.firstWhereOrNull(
                  (element) => element.status == ReservationStatus.reserved);
              if (currentReservation != null) {
                return DriverReservationInfoWidget(
                  info: currentReservation,
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
