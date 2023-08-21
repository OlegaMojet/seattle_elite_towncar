import 'package:flutter/material.dart';
import 'package:seattle_taxi/router.dart';
import 'package:seattle_taxi/core/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().main,
      routerConfig: AppRouter.router,
    );
  }
}