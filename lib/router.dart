import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/welcome_screen.dart';

class AppRouter {
  static GoRouter get router => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const WelcomeScreen(),
          )
        ],
      );
}
