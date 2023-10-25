class DriverProfile {
  final String? id;
  final String? name;
  final int? phoneNumber;
  final int? driverMain;
  final bool notifications;

  DriverProfile({
    this.id,
    this.name,
    this.phoneNumber,
    this.driverMain,
    this.notifications = true,
  });
}
