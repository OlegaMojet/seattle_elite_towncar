import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/services/notification_service.dart';
import 'package:seattle_elite_towncar/core/utils/theme.dart';
import 'package:seattle_elite_towncar/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/bloc/nav_bar_cubit.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/location/presentation/bloc/location_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/presentation/bloc/reservations_bloc.dart';
import 'package:workmanager/workmanager.dart';

import 'modules/driver/features/home/presentation/bloc/orders_bloc.dart';

@pragma(
    'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print(
        "Native called background task: $task"); //simpleTask will be emitted here.
    return Future.value(true);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SentryFlutter.init(
  //   (options) {
  //     options.dsn =
  //         'https://6cef7aafce21ae489252b559bd3aba9b@o4505913558040576.ingest.sentry.io/4505913559810048';
  //     // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
  //     // We recommend adjusting this value in production.
  //     options.tracesSampleRate = 1.0;

  //   },
  //   appRunner: () => runApp(MyApp()),
  // );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  NotificationService notificationService = NotificationService();
  await notificationService.init();
  await notificationService.requestIOSPermissions();
  runApp(const MyApp());

  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthorizationBloc(),
        ),
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
        BlocProvider(
          create: (context) => FormBloc(),
        ),
        BlocProvider(
          create: (context) => VehiclesBloc(),
        ),
        BlocProvider(
          create: (context) => ReservationsBloc(),
        ),
        BlocProvider(
          create: (context) => OrdersBloc(),
        ),
        BlocProvider(
          create: (context) => FleetBloc(),
        ),
        BlocProvider(
          create: (context) => UserLocationBloc(),
        ),
        BlocProvider(
          create: (context) => UserProfileBloc(),
        ),
        BlocProvider(
          create: (context) => DriverProfileBloc(),
        ),
      ],
      child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp.router(
              restorationScopeId: 'main',
              theme: AppTheme().main,
              routerConfig: AppRouter().router,
            ),
          );
        },
      ),
    );
  }
}
