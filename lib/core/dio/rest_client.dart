import 'package:dio/dio.dart';
import 'package:dio/src/headers.dart' as headers;
import 'package:retrofit/retrofit.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/client_profile_model.dart';
import 'package:seattle_elite_towncar/features/auth/data/models/driver_profile_model.dart';
import 'package:seattle_elite_towncar/modules/driver/features/profile/data/models/car_model.dart';
import 'package:seattle_elite_towncar/modules/user/features/home/data/models/quote_reservation.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/data/models/get_quotes_by.dart';
import 'package:seattle_elite_towncar/modules/user/features/reservations/domain/entities/change_status_quote.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://amerishopas.com/wp-json/wpp-taxi/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET('client/get_quotes_by')
  Future<List<QuoteReservationModel>?> getReservations(
    @Body() GetQuotesByModel by,
  );

  @POST('client/profile')
  Future<ClientProfileModel> clientAuthorize(
    @Body() Map<String, dynamic> clientId,
  );

  @POST('client/change_status_quote')
  Future<ClientProfileModel> changeStatusQuote(
    @Body() ChangeStatusQuoteModel changeStatusQuote,
  );

  @POST('driver/d_profile')
  Future<DriverProfileModel> driverAuthorize(
    @Body() Map<String, dynamic> driverId,
  );

  @POST('client/send_a_quote')
  Future<void> sendAQuote(
    @Body() QuoteReservationModel quoteInfo,
  );

  @POST('client/reservation')
  Future<void> reservation(
    @Body() QuoteReservationModel reservationInfo,
  );

  @GET('client/get_profile')
  Future<ClientProfileModel> getProfile(
    @Query('clientId') String clientId,
  );

   @GET('driver/get_d_profile')
  Future<DriverProfileModel> getDriverProfile(
    @Query('driverId') String driverId,
  );

  @POST('driver/car')
  Future<CarModel> addCar(
    @Body() CarModel carModel,
  );

  @POST('driver/car')
  Future<void> updateCar(
    @Body() CarModel carModel,
  );

  @POST('driver/remove_car')
  Future<void> removeCar(
    @Body() Map<String, dynamic> carId,
  );

  @GET('driver/get_car_list')
  Future<List<CarModel>?> getCars();

  @GET('client/get_car_list')
  Future<List<CarModel>?> getClientCars();

   @GET('driver/get_car')
  Future<List<CarModel>?> getCar(@Query('carId') String carId);

  @POST('client/change_status_quote')
  Future<void> clientChangeStatus(@Body() Map<String, dynamic> status);

  @POST('driver/change_status_d_quote')
  Future<void> driverChangeStatus(@Body() Map<String, dynamic> driverStatus);
  @GET('driver/get_drivers_list')
  Future<List<DriverProfileModel>> getDriversList();
  @POST('client/change_coordinates')
  Future<List<DriverProfileModel>> clientChangeCoordinates();
  @POST('driver/change_coordinates')
  Future<List<DriverProfileModel>> driverChangeCoordinates();

  @POST('driver/update_quote')
  Future<void> updateQuote(@Body() Map<String, dynamic> quoteData);
}

class ApiService {
  ApiService._();
  static final ApiService _apiService = ApiService._();
  static ApiService get instance => _apiService;

  RestClient get restClient => RestClient(
      _buildDioClient('http://amerishopas.com/wp-json/wpp-taxi/v1/'));

  Dio _buildDioClient(String baseUrl) {
    final dio = Dio()
      ..options = BaseOptions(
        baseUrl: baseUrl,
        contentType: headers.Headers.jsonContentType,
      );
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (e, handler) {
          e.data = e.data['data'];

          return handler.next(e);
        },
        onRequest: (options, handler) {
          return handler.next(options);
        },
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: false,
        requestHeader: false,
        responseHeader: false,
      ),
    );

    return dio;
  }
}
