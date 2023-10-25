import 'package:seattle_elite_towncar/modules/user/features/home/domain/entities/ride_details.dart';

class StringUtils {
  static String obscureCard(String card) {
    final obscuredLength = card.split(' ').join().length - 2;
    String obscured = '';
    String lastSymbols = card.substring(obscuredLength);
    for (var i = 0; i < obscuredLength - 1; i++) {
      obscured += '*';
    }
    String obscuredCard = obscured + lastSymbols;
    return obscuredCard;
  }

  static String normalizePhone(String phone) {
    final normalized =
        '+${phone.replaceAll(RegExp(r'^\D+|(?<=\d),(?=\d)'), '')}';
    return normalized;
  }

  static int normalizePhoneInt(String phone) {
    final normalized = phone.replaceAll(RegExp(r'[^0-9]'), '');
    return int.parse(normalized);
  }

  static String rideDetailsToAddress(RideDetails details, bool isPickup) {
    if (isPickup) {
      return details.pickupType == 0
          ? details.pickupAddress!
          : '${details.pickupAirportNameOrCode!.isNotEmpty ? '${details.pickupAirportNameOrCode}, ' : ''}${details.pickupAirlineName!.isNotEmpty ? '${details.pickupAirlineName}, ' : ''}${details.pickupFlightNumber!.isNotEmpty ? details.pickupFlightNumber! : ''}';
    } else {
      return details.destinationType == 0
          ? details.destinationAddress!
          : '${details.destinationAirportNameOrCode!.isNotEmpty ? '${details.destinationAirportNameOrCode}, ' : ''}${details.destinationAirlineName!.isNotEmpty ? '${details.destinationAirlineName}, ' : ''}${details.destinationFlightNumber!.isNotEmpty ? details.destinationFlightNumber! : ''}';
    }
  }
}
