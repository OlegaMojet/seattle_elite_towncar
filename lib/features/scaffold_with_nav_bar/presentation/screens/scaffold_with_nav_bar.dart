import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/gen/assets.gen.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/features/auth/presentation/bloc/auth/bloc.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/bloc/nav_bar_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/utils.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  final Widget child;
  const ScaffoldWithNavBar({super.key, required this.child});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  bool isDriver = true;

  @override
  void didChangeDependencies() async {
    final blocState = context.read<AuthorizationBloc>().state;
    if (blocState is Authenticated) {
      setState(() {
        isDriver = blocState.isDriver;
      });
    } else {
      final sp = await SharedPreferences.getInstance();
      setState(() {
        isDriver = sp.getBool('isDriver')!;
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, int>(
      builder: (context, pageIndex) {
        return Scaffold(
          body: widget.child,
          bottomNavigationBar: Theme(
            data: context.theme.copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent),
            child: Stack(
              children: [
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: pageIndex,
                  backgroundColor: AppColors.white,
                  onTap: (page) {
                    switch (page) {
                      case 0:
                        context.go(isDriver
                            ? AppRouter.driverHome
                            : AppRouter.userHome);
                      case 1:
                        context.go(isDriver
                            ? AppRouter.driverLocation
                            : AppRouter.userReservations);
                      case 2:
                        context.go(isDriver
                            ? AppRouter.driverProfile
                            : AppRouter.userLocation);
                      case 3:
                        context.go(AppRouter.userProfile);
                        break;
                      default:
                    }
                    context.read<NavbarCubit>().changePage(page);
                  },
                  items: isDriver
                      ? [
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainHome.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainHome.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainLocation.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainLocation.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainProfile.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainProfile.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                        ]
                      : [
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainHome.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainHome.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainReservations.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainReservations.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainLocation.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainLocation.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainProfile.svg(),
                            ),
                            activeIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Assets.icons.mainProfile.svg(
                                colorFilter: const ColorFilter.mode(
                                  AppColors.mediumBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            label: '',
                          ),
                        ],
                ),
                if (!isDriver)
                  AnimatedPositioned(
                    top: 0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastEaseInToSlowEaseOut,
                    left: pageIndex == 0
                        ? 0
                        : pageIndex == 1
                            ? (context.width / 4)
                            : pageIndex == 2
                                ? ((context.width / 4) * 2)
                                : ((context.width / 4) * 3),
                    child: Container(
                      height: 1,
                      width: (context.width / 4),
                      color: AppColors.mediumBlue,
                    ),
                  )
                else
                  AnimatedPositioned(
                    top: 0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastEaseInToSlowEaseOut,
                    left: pageIndex == 0
                        ? 0
                        : pageIndex == 1
                            ? (context.width / 3)
                            : ((context.width / 3) * 2),
                    child: Container(
                      height: 1,
                      width: (context.width / 3),
                      color: AppColors.mediumBlue,
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
