import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/bloc/nav_bar_cubit.dart';

class ThankYouScreen extends StatelessWidget {
  final bool isReservation;
  const ThankYouScreen({super.key, required this.isReservation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.coloredLogo.image(width: context.width * 0.45),
            const SizedBox(height: 24),
            Text(
              'Thank you!',
              style: context.theme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              isReservation
                  ? 'Your reservation has been send successfully.'
                  : 'Your quote has been send successfully.',
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: AppColors.gray,
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: context.width,
              child: ElevatedButton(
                onPressed: () {
                  context.read<NavbarCubit>().changePage(1);
                  context.go(AppRouter.userReservations);
                },
                child: const Text('Back to reservation page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
