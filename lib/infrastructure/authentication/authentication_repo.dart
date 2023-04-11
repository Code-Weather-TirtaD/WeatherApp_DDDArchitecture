import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp_ddd/domain/authentication/i_authentication_repo.dart';

@LazySingleton(as: IAuthenticationRepo)
class AuthenticationRepo extends IAuthenticationRepo {
  AuthenticationRepo(this.network);
  final INetworkService network;
  IStorage storage = Storage;

  @override
  Future<Either<NetworkError, Map<String, dynamic>>> login({
    required String username,
    required String password,
  }) async {
    //for accessing server
    /*
    final response = await network.postHttp(path: 'login', content: {
      'username': username,
      'password': password,
    });

    return response.match((l) => left(l), (r) {
      final res = r as Map<String, dynamic>;
      return right(res);
    });
    */

    //for accessing local storage
    await storage.openBox('login');
    String user = await storage.getData(key: 'username');
    String pass = await storage.getData(key: 'password');

    if (user == username && pass == password) {
      Map<String, dynamic> res = {'Info': 'Login Success'};
      return right(res);
    }

    return left(const NetworkError.serverError());
  }

  @override
  Future<void> register({
    required String username,
    required String password,
  }) async {
    await storage.openBox('login');
    await storage.putData(data: {'username': username, 'password': password});
    await storage.close();
    return;
  }

  @override
  Future<void> close() async {
    await storage.close();
  }
}
