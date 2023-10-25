import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/driver_profile.dart';
import 'package:seattle_elite_towncar/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:seattle_elite_towncar/features/auth/presentation/screens/welcome_screen.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/screens/scaffold_with_nav_bar.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/data/models/order_info_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/screens/details.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/screens/home.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/screens/home_main.dart';
import 'package:seattle_elite_towncar/modules/driver/features/location/presentation/screens/location.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/contact_information.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/my_fleet/add_new_edit.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/my_fleet/profile_fleet.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/profile.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/profile_notifications.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/screens/profile_personal_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/get_a_quote/brief_description.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/home.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/reservation/additional_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/reservation/payment_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/ride_details.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/start_form.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/screens/thank_you_screen.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/screens/location.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/screens/contact_information.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/screens/profile.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/screens/profile_notifications.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/screens/profile_personal_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/screens/details.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/screens/reservations.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension AppRouterX on BuildContext {
  void goLocation(String location, {Object? extra}) => go(
      '${GoRouter.of(this).routeInformationProvider.value.location}/$location',
      extra: extra);
  void pushLocation(String location, {Object? extra}) => push(
      '${GoRouter.of(this).routeInformationProvider.value.location}/$location',
      extra: extra);
}

final _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorKey');

final _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

class AppRouter {
  AppRouter() : router = _router;

  final GoRouter router;

  static const String root = '/';
  static const String welcome = '/';

  //Driver Routes
  static const String driverHome = '/driverHome';
  static const String driverLocation = '/driverLocation';
  static const String driverProfile = '/driverProfile';
  static const String driverMyFleet = 'driverMyFleet';
  static const String driverProfilePersonalInfo = 'driverProfilePersonalInfo';
  static const String driverProfileNotifications = 'driverProfileNotifications';
  static const String driverProfileContact = 'driverProfileContact';
  static const String driverMyFleetAddEditNew = 'driverMyFleetAddEditNew';
  static const String driverOrderDetails = 'driverOrderDetails';

  //User Routes
  static const String userHome = '/userHome';
  static const String userReservations = '/userReservations';
  static const String userLocation = '/userLocation';
  static const String userProfile = '/userProfile';
  static const String userProfilePersonalInfo = 'userProfilePersonalInfo';
  static const String userProfileNotifications = 'userProfileNotifications';
  static const String userProfileContact = 'userProfileContact';
  static const String startForm = 'startForm';
  static const String rideDetails = 'rideDetails';
  static const String briefDescription = 'briefDescription';
  static const String additionalInfo = 'additionalInfo';
  static const String thankYou = 'thankYou';
  static const String paymentDetails = 'paymentDetails';
  static const String reservationDetails = 'reservationDetails';

  static final GoRouter _router = GoRouter(
    initialLocation: root,
    navigatorKey: _rootNavigatorKey,
    restorationScopeId: 'root',
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final sp = await SharedPreferences.getInstance();
      if (state.fullPath == root) {
        final blocState = context.read<AuthorizationBloc>().state;
        if (sp.getBool('isDriver') != null) {
          if (sp.getBool('isDriver')!) {
            return driverHome;
          } else {
            return userHome;
          }
        } else {
          if (blocState is Authenticated) {
            if (blocState.isDriver) {
              return driverHome;
            } else {
              return userHome;
            }
          } else {
            root;
          }
        }
      }
      return null;
    },
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => ScaffoldWithNavBar(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: driverHome,
              pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const DriverHome(),
                  ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: driverOrderDetails,
                  name: driverOrderDetails,
                  builder: (context, state) {
                    final extra = state.extra as (OrderInfoModel, bool);
                    return OrderDetails(
                      details: extra.$1,
                      isNew: extra.$2,
                    );
                  },
                ),
              ]),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: driverLocation,
            pageBuilder: (context, state) => NoTransitionPage(
              child: DriverLocationScreen(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: driverProfile,
              pageBuilder: (context, state) => NoTransitionPage(
                    child: DriverProfileScreen(
                      key: state.pageKey,
                    ),
                  ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: driverMyFleet,
                  name: driverMyFleet,
                  builder: (context, state) => const MyFleetScreen(),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: driverMyFleetAddEditNew,
                      name: driverMyFleetAddEditNew,
                      builder: (context, state) => AddNewEditFleet(
                        vehicle: state.extra as Car?,
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  path: driverProfilePersonalInfo,
                  name: driverProfilePersonalInfo,
                  builder: (context, state) => DriverProfilePersonalInfo(
                      profile: state.extra as DriverProfile),
                ),
                GoRoute(
                  path: driverProfileNotifications,
                  name: driverProfileNotifications,
                  builder: (context, state) =>
                      const DriverProfileNotifications(),
                ),
                GoRoute(
                  path: driverProfileContact,
                  name: driverProfileContact,
                  builder: (context, state) =>
                      const DriverProfileContactInformation(),
                ),
              ]),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: userHome,
            pageBuilder: (context, state) => NoTransitionPage(
              child: UserHome(
                key: state.pageKey,
              ),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: startForm,
                builder: (context, state) => StartForm(
                  key: state.pageKey,
                  vehicle: state.extra as Car,
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: rideDetails,
                    name: rideDetails,
                    builder: (context, state) {
                      final extra = state.extra as (bool, Car);
                      return RideDetailsScreen(
                        isReservation: extra.$1,
                        vehicle: extra.$2,
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: briefDescription,
                        name: briefDescription,
                        builder: (context, state) =>
                            const BriefDescriptionScreen(),
                      ),
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: thankYou,
                        name: thankYou,
                        builder: (context, state) => ThankYouScreen(
                          isReservation: state.extra as bool,
                        ),
                      ),
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: additionalInfo,
                        name: additionalInfo,
                        builder: (context, state) =>
                            const AdditionalInformationScreen(),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: paymentDetails,
                            name: paymentDetails,
                            builder: (context, state) =>
                                const PaymentDetailsScreen(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: userReservations,
            pageBuilder: (context, state) => NoTransitionPage(
              child: UserReservationsScreen(
                key: state.pageKey,
              ),
            ),
            routes: [
              GoRoute(
                path: reservationDetails,
                name: reservationDetails,
                builder: (context, state) => ReservationDetails(
                  details: state.extra as ReservationInfo,
                ),
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: userLocation,
            pageBuilder: (context, state) => NoTransitionPage(
              child: UserLocationScreen(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: userProfile,
            pageBuilder: (context, state) => NoTransitionPage(
              child: UserProfileScreen(
                key: state.pageKey,
              ),
            ),
            routes: [
              GoRoute(
                path: userProfilePersonalInfo,
                name: userProfilePersonalInfo,
                builder: (context, state) => UserProfilePersonalInfo(
                  profile: state.extra as ClientProfile,
                ),
              ),
              GoRoute(
                path: userProfileNotifications,
                name: userProfileNotifications,
                builder: (context, state) => const UserProfileNotifications(),
              ),
              GoRoute(
                path: userProfileContact,
                name: userProfileContact,
                builder: (context, state) =>
                    const UserProfileContactInformation(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: root,
        path: root,
        builder: (context, state) => const WelcomeScreen(),
      ),
    ],
  );
}
