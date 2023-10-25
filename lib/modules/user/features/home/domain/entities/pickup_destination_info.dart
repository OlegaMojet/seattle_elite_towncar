class PickupDestinationInfo {
  final int addressType;
  final String? address;
  final String? airportName;
  final String? airlineName;
  final String? flightNumber;

  PickupDestinationInfo({
    required this.addressType,
    this.address,
    this.airportName,
    this.airlineName,
    this.flightNumber,
  });
}
