import 'package:seattle_elite_towncar/modules/user/features/home/data/datasources/vehicles_datasource.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/repositories/vehicles_repository_impl.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/bloc.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/vehicles/vehicles_event.dart';

class VehiclesBloc extends Bloc<VehiclesEvent, VehiclesState> {
  late VehiclesRepositoryImpl _vehiclesRepositoryImpl;
  VehiclesBloc() : super(VehiclesState()) {
    _vehiclesRepositoryImpl =
        VehiclesRepositoryImpl(vehiclesDataSource: VehiclesDataSourceImpl());
    on(_onFetchVehicles);
    on(_onFilterVehicles);
    add(FetchVehicles());
  }

  _onFetchVehicles(FetchVehicles event, Emitter<VehiclesState> emit) async {
    final list = await _vehiclesRepositoryImpl.getCars();
    emit(VehiclesState(cars: list));
  }

  _onFilterVehicles(FilterVehicles event, Emitter<VehiclesState> emit) async {
    emit(state.copyWith(vehicleType: event.vehicleType));
  }
}
