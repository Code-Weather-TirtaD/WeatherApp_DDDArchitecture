import 'package:injectable/injectable.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';

@module
abstract class RegisterModule {
  @Named('base_url')
  String get weatherUrl => 'https://api.openweathermap.org/data/2.5';

  @Named('api_key')
  String get weatherApiKey => 'f60aee0cb01f476b9ab0c6e2d02d46ad';

  @lazySingleton
  AppRouters get appRouters => AppRouters();

  @preResolve
  @lazySingleton
  Future<INetworkService> network(
    @Named('base_url') String baseUrl,
    // @Named('api_key') String apiKey,
  ) async {
    final client = NetworkService(baseUrl: weatherUrl);
    // client.headers = {'apiKey': apiKey};
    client.addInterceptors([
      LoggerInterceptor(),
    ]);

    return client;
  }
}
