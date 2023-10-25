import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/screens/home_driver.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/presentation/screens/home_main.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_event.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_state.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({super.key});

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  @override
  void initState() {
    context.read<DriverProfileBloc>().add(FetchProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverProfileBloc, DriverProfileState>(
      builder: (context, state) {
        if (state is FetchedDriverProfileState) {
          return state.profile.driverMain == 1
              ? const DriverMainHome()
              : const DriverHomeDriver();
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
