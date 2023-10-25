import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';

extension CarToCarModel on Car {
  CarModel get toCarModel => CarModel(
        carId: carId,
        carName: carName,
        numOfBags: numOfBags,
        numOfPass: numOfPass,
        image: image,
        vehicleType: vehicleType,
      );
}

class Car {
  final int? carId;
  final String? carName;
  final int? numOfBags;
  final int? numOfPass;
  final String? image;
  final int? vehicleType;

  Car(
      {this.carId,
      this.carName,
      this.numOfBags,
      this.numOfPass,
      this.image,
      this.vehicleType});
}
