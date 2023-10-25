import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_state.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/widgets/reservation_info_widget.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:collection/collection.dart';

import '../../../reservations/presentation/bloc/bloc.dart';

class UserLocationScreen extends StatefulWidget {
  const UserLocationScreen({super.key});

  @override
  State<UserLocationScreen> createState() => _UserLocationScreenState();
}

class _UserLocationScreenState extends State<UserLocationScreen> {
  late MapController _controller;

  @override
  void initState() {
    _controller = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
          BlocBuilder<ReservationsBloc, ReservationsState>(
            builder: (context, state) {
              final currentReservation = state.reservations?.firstWhereOrNull(
                  (element) => element.status == ReservationStatus.reserved);
              return SizedBox(
                height:
                    context.height * (currentReservation != null ? 0.5 : 0.759),
                child: BlocBuilder<UserLocationBloc, UserLocationState>(
                  builder: (context, state) {
                    return StreamBuilder<Position>(
                        stream: Geolocator.getPositionStream(),
                        builder: (context, snapshot) {
                          return FlutterMap(
                            mapController: _controller,
                            options: MapOptions(
                              interactiveFlags: InteractiveFlag.pinchZoom |
                                  InteractiveFlag.drag |
                                  InteractiveFlag.pinchMove,
                              maxZoom: 17,
                              zoom: 17,
                              rotationWinGestures: MultiFingerGesture.none,
                              rotationThreshold: 0,
                              onPositionChanged: (position, hasGesture) {},
                              center: LatLng(snapshot.data!.latitude,
                                  snapshot.data!.longitude),
                              minZoom: 2,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                userAgentPackageName: 'com.taxi.limosoft',
                              ),
                              if (snapshot.hasData)
                                MarkerLayer(
                                  markers: [
                                    Marker(
                                      point: LatLng(
                                        snapshot.data!.latitude,
                                        snapshot.data!.longitude,
                                      ),
                                      builder: (context) =>
                                          Assets.icons.markerPass.svg(),
                                      height: 58,
                                      width: 40,
                                    ),
                                    Marker(
                                      point: state.location ??
                                          const LatLng(60.072838, 30.340178),
                                      builder: (context) =>
                                          Assets.icons.markerCar.svg(),
                                      height: 58,
                                      width: 40,
                                    ),
                                  ],
                                ),
                            ],
                          );
                        });
                  },
                ),
              );
            },
          ),
          BlocBuilder<ReservationsBloc, ReservationsState>(
            builder: (context, state) {
              final currentReservation = state.reservations?.firstWhereOrNull(
                  (element) => element.status == ReservationStatus.reserved);
              if (currentReservation != null) {
                return Column(
                  children: [
                    const SizedBox(height: 20),
                    UserReservationInfoWidget(
                      info: currentReservation,
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
