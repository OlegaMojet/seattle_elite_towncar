import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/repositories/driver_profile_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_event.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/profile/bloc/driver_profile_state.dart';

class DriverProfileBloc extends Bloc<DriverProfileEvent, DriverProfileState> {
  final _repository = DriverProfileRepositoryImpl();
  DriverProfileBloc() : super(DriverProfileInitial()) {
    on(_onFetchDriverProfile);
    on(_onInitial);
  }

  _onFetchDriverProfile(
      FetchProfile event, Emitter<DriverProfileState> emit) async {
    if (event.profile != null) {
      emit(FetchedDriverProfileState(profile: event.profile!));
    } else {
      final profile = await _repository.profile();
      emit(FetchedDriverProfileState(profile: profile));
    }
  }

  _onInitial(InitialProfile event, Emitter<DriverProfileState> emit) async {
    emit(DriverProfileInitial());
  }
}
