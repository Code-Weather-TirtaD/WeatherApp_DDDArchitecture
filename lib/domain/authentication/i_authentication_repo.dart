import 'package:fpdart/fpdart.dart';
import 'package:code_id_network/code_interfaces/value/network_error.dart';

abstract class IAuthenticationRepo {
  Future<Either<NetworkError, Map<String, dynamic>>> login({
    required String username,
    required String password,
  });
  Future<void> register({
    required String username,
    required String password,
  });
  Future<void> close();
}
