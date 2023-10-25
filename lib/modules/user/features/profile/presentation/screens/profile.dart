import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/profile_main_element.dart';
import 'package:seattle_elite_towncar/core/widgets/profile_main_personal_element.dart';
import 'package:seattle_elite_towncar/features/auth/presentation/bloc/auth/bloc.dart';
import 'package:seattle_elite_towncar/features/scaffold_with_nav_bar/presentation/bloc/nav_bar_cubit.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_state.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  void initState() {
    context.read<UserProfileBloc>().add(FetchProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      listener: (context, state) {
        if (state is Initial) {
          context.pushReplacementNamed(AppRouter.root);
          context.read<NavbarCubit>().changePage(0);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          centerTitle: false,
          title: Text(
            'Profile',
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        body: BlocBuilder<UserProfileBloc, UserProfileState>(
          builder: (context, state) {
            if (state is FetchedUserProfileState) {
              print(state.profile.phoneNumber);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileMainPersonalElement(
                    name: state.profile.name ?? 'Joe Smith',
                    phone: '${state.profile.phoneNumber ?? '+111 123456'}',
                    onTap: () {
                      context.pushNamed(
                        AppRouter.userProfilePersonalInfo,
                        extra: state.profile,
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.lightGray,
                    ),
                  ),
                  ProfileMainElement(
                    title: 'Notifications',
                    onTap: () {
                      context.pushNamed(AppRouter.userProfileNotifications);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.lightGray,
                    ),
                  ),
                  ProfileMainElement(
                    title: 'Privacy policy and conditions',
                    onTap: () {},
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.lightGray,
                    ),
                  ),
                  ProfileMainElement(
                    title: 'Contact information',
                    onTap: () {
                      context.pushNamed(AppRouter.userProfileContact);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.lightGray,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.black,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.read<AuthorizationBloc>().add(Logout());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Log out',
                        textAlign: TextAlign.left,
                        style: context.theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
