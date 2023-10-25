import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';

part 'list_car_model.freezed.dart';
part 'list_car_model.g.dart';

@freezed
class ListCarModel with _$ListCarModel {
  factory ListCarModel({
    required List<CarModel> listCarModel,
  }) = _ListCarModel;
  factory ListCarModel.fromJson(Map<String, dynamic> json) =>
      _$ListCarModelFromJson(json);
}
