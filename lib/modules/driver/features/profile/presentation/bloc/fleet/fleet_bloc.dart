import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/repositories/fleet_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_event.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/presentation/bloc/fleet/fleet_state.dart';

class FleetBloc extends Bloc<FleetEvent, FleetState> {
  late FleetRepositoryImpl _repositoryImpl;
  FleetBloc() : super(FleetState()) {
    on(_onFetchCars);
    on(_onAddCar);

    _repositoryImpl = FleetRepositoryImpl();
  }

  _onFetchCars(FetchFleet event, Emitter<FleetState> emit) async {
    final list = await _repositoryImpl.fetchFleet();
    emit(state.copyWith(myCars: list));
  }

  _onAddCar(AddCar event, Emitter<FleetState> emit) async {
    await _repositoryImpl.addCar(event.car);
    add(FetchFleet());
  }
}
