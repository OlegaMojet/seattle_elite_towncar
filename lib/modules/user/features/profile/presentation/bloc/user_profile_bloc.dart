import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/data/repositories/user_profile_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_event.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/bloc/user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final _repository = UserProfileRepositoryImpl();
  UserProfileBloc() : super(UserProfileInitial()) {
    on(_onFetchUserProfile);
  }

  _onFetchUserProfile(
      FetchProfile event, Emitter<UserProfileState> emit) async {
    if (event.profile != null) {
      emit(FetchedUserProfileState(profile: event.profile!));
    } else {
      final profile = await _repository.profile();
      emit(FetchedUserProfileState(profile: profile));
    }
  }
}
