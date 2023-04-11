import 'package:fpdart/fpdart.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:weatherapp_ddd/infrastructure/login/login_model.dart';

abstract class ILoginRepo {
  Future<Either<NetworkError, LoginModel>> login(
      String username, String password);

  Future<Either<NetworkError, LoginModel>> loadAuth();
  Future<void> closeStorage();
}
