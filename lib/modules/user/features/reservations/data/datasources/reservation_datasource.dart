import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:seattle_elite_towncar/core/dio/rest_client.dart';
import 'package:seattle_elite_towncar/core/utils/string_utils.dart';
import 'package:seattle_elite_towncar/modules/driver/features/home/domain/entities/order_info.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/domain/entities/car.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/passenger_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/pickup_destination_info_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/quote_reservation.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/ride_details_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/presentation/bloc/form/form_state.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/reservation_info.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/reservation_info.dart';

abstract class ReservationDatasource {
  Future<List<ReservationInfoModel>?> getReservations(
      GetQuotesByModel by, List<Car> cars);

  Future<void> addReservation(FormState formData);
  Future<void> addQuote(FormState formData);

  Future<void> cancelReservation({required int quoteId, required int status});
}

class ReservationDatasourceImpl extends ReservationDatasource {
  @override
  Future<List<ReservationInfoModel>?> getReservations(
      GetQuotesByModel by, List<Car> cars) async {
    final list = <ReservationInfoModel>[];
    final result = await ApiService.instance.restClient.getReservations(by);
    if (result != null) {
      for (final element in result) {
        final car = cars.firstWhere((value) => value.carId == element.carId);
        list.add(
          ReservationInfoModel(
            quoteId: element.quoteId!,
            status: ReservationStatus.values[element.clientStatus],
            price: element.price,
            passengerInfo: PassengerInfoModel(
              fullName: element.name,
              companyName: element.companyName,
              daytimePhone: element.daytimePhoneNumber.toString(),
              phone: element.phoneNumber.toString(),
              email: element.email,
              address: element.homeAddress,
            ),
            rideDetails: RideDetailsModel(
              vehicle: CarModel(
                carId: element.carId,
                carName: car.carName,
                numOfBags: car.numOfBags,
                numOfPass: car.numOfPass,
                image: car.image,
                vehicleType: car.vehicleType,
              ),
              serviceType: element.serviceType,
              dateTime: DateTime.parse(element.dateTime).toLocal(),
              address: element.homeAddress,
              numOfBags: element.numOfBags,
              numOfPass: element.numOfPass,
              pickupType: element.pickupInfo.addressType,
              pickupAddress: element.pickupInfo.address,
              pickupAirlineName: element.pickupInfo.airlineName,
              pickupAirportNameOrCode: element.pickupInfo.airportName,
              pickupFlightNumber: element.pickupInfo.flightNumber,
              destinationType: element.destinationInfo.addressType,
              destinationAddress: element.destinationInfo.address,
              destinationAirlineName: element.destinationInfo.airlineName,
              destinationAirportNameOrCode: element.destinationInfo.airportName,
              destinationFlightNumber: element.destinationInfo.flightNumber,
            ),
            additionalInfo: element.additionalInfo,
          ),
        );
      }
      return list;
    }
    return null;
  }

  @override
  Future<void> addQuote(FormState formData) async {
    if (formData.passengerInfo!.saveInfo!) {
      await ApiService.instance.restClient.clientAuthorize({
        'clientId': FirebaseAuth.instance.currentUser!.uid,
        'name': formData.passengerInfo!.fullName,
        'companyName': formData.passengerInfo!.companyName,
        'homeAddress': formData.passengerInfo!.address,
        'phoneNumber':
            StringUtils.normalizePhoneInt(formData.passengerInfo!.phone),
        if (formData.passengerInfo!.daytimePhone != null)
          'daytimePhoneNumber': StringUtils.normalizePhoneInt(
              formData.passengerInfo!.daytimePhone!),
        'email': formData.passengerInfo!.email,
      });
    }
    return ApiService.instance.restClient.sendAQuote(
      QuoteReservationModel(
        carId: formData.rideDetails!.vehicle.carId!,
        clientId: FirebaseAuth.instance.currentUser!.uid,
        name: formData.passengerInfo!.fullName,
        companyName: formData.passengerInfo!.companyName,
        pickupInfo: PickupDestinationInfoModel(
          addressType: formData.rideDetails!.pickupType!,
          address: formData.rideDetails!.pickupAddress,
          airportName: formData.rideDetails!.pickupAirportNameOrCode,
          airlineName: formData.rideDetails!.pickupAirlineName,
          flightNumber: formData.rideDetails!.pickupFlightNumber,
        ),
        destinationInfo: PickupDestinationInfoModel(
          addressType: formData.rideDetails!.destinationType!,
          address: formData.rideDetails!.destinationAddress,
          airportName: formData.rideDetails!.destinationAirportNameOrCode,
          airlineName: formData.rideDetails!.destinationAirlineName,
          flightNumber: formData.rideDetails!.destinationFlightNumber,
        ),
        phoneNumber:
            StringUtils.normalizePhoneInt(formData.passengerInfo!.phone),
        daytimePhoneNumber: formData.passengerInfo!.daytimePhone != null
            ? StringUtils.normalizePhoneInt(
                formData.passengerInfo!.daytimePhone!)
            : null,
        email: formData.passengerInfo!.email,
        homeAddress: 'address',
        serviceType: formData.rideDetails!.serviceType,
        numOfBags: formData.rideDetails!.numOfBags,
        numOfPass: formData.rideDetails!.numOfPass,
        dateTime:
            DateFormat('y-M-d hh:mm:ss').format(formData.rideDetails!.dateTime),
        additionalInfo: formData.additionalInfo,
        driverStatus: OrderStatus.newOrder.index,
        clientStatus: ReservationStatus.reserved.index,
      ),
    );
  }

  @override
  Future<void> addReservation(FormState formData) async {
    if (formData.passengerInfo!.saveInfo!) {
      await ApiService.instance.restClient.clientAuthorize({
        'clientId': FirebaseAuth.instance.currentUser!.uid,
        'name': formData.passengerInfo!.fullName,
        'companyName': formData.passengerInfo!.companyName,
        'homeAddress': formData.passengerInfo!.address,
        'phoneNumber':
            StringUtils.normalizePhoneInt(formData.passengerInfo!.phone),
        if (formData.passengerInfo!.daytimePhone != null)
          'daytimePhoneNumber': StringUtils.normalizePhoneInt(
              formData.passengerInfo!.daytimePhone!),
        'email': formData.passengerInfo!.email,
      });
    }

    return ApiService.instance.restClient.reservation(
      QuoteReservationModel(
        carId: formData.rideDetails!.vehicle.carId!,
        clientId: FirebaseAuth.instance.currentUser!.uid,
        name: formData.passengerInfo!.fullName,
        companyName: formData.passengerInfo!.companyName,
        pickupInfo: PickupDestinationInfoModel(
          addressType: formData.rideDetails!.pickupPlace,
          address: formData.rideDetails!.pickupAddress,
          airportName: formData.rideDetails!.pickupAirportNameOrCode,
          airlineName: formData.rideDetails!.pickupAirlineName,
          flightNumber: formData.rideDetails!.pickupFlightNumber,
        ),
        destinationInfo: PickupDestinationInfoModel(
          addressType: formData.rideDetails!.destinationPlace,
          address: formData.rideDetails!.destinationAddress,
          airportName: formData.rideDetails!.destinationAirportNameOrCode,
          airlineName: formData.rideDetails!.destinationAirlineName,
          flightNumber: formData.rideDetails!.destinationFlightNumber,
        ),
        phoneNumber:
            StringUtils.normalizePhoneInt(formData.passengerInfo!.phone),
        daytimePhoneNumber: formData.passengerInfo!.daytimePhone != null
            ? StringUtils.normalizePhoneInt(
                formData.passengerInfo!.daytimePhone!)
            : null,
        email: formData.passengerInfo!.email,
        homeAddress: 'address',
        serviceType: formData.rideDetails!.serviceType,
        numOfBags: formData.rideDetails!.numOfBags,
        numOfPass: formData.rideDetails!.numOfPass,
        dateTime: DateFormat('y-M-d hh:mm:ss')
            .format(formData.rideDetails!.dateTime.toUtc()),
        additionalInfo: formData.additionalInfo,
        driverStatus: OrderStatus.active.index,
        clientStatus: ReservationStatus.reserved.index,
      ),
    );
  }

  @override
  Future<void> cancelReservation(
      {required int quoteId, required int status}) async {
    await ApiService.instance.restClient.clientChangeStatus({
      'quoteId': quoteId,
      'clientStatus': status,
    });
    await ApiService.instance.restClient.driverChangeStatus({
      'quoteId': quoteId,
      'driverStatus': OrderStatus.canceled.index,
    });
  }
}
