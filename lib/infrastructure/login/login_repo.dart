import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:weatherapp_ddd/domain/login/i_login_repo.dart';
import 'package:weatherapp_ddd/infrastructure/login/login_model.dart';

@LazySingleton(as: ILoginRepo)
class LoginRepo extends ILoginRepo {
  IStorage store = Storage;
  final INetworkService network;
  LoginRepo(this.network);

  @override
  Future<Either<NetworkError, LoginModel>> login(
      String username, String password) async {
    final response = await network.postHttp(
        path: 'https://api.escuelajs.co/api/v1/auth/login',
        content: {'email': username, 'password': password});

    return response.fold((l) => left(l), (r) {
      final json = r as Map<String, dynamic>;
      store.openBox('authKey');
      store.putData(data: json);

      return right(LoginModel.fromJson(json));
    });
  }

  @override
  Future<Either<NetworkError, LoginModel>> loadAuth() async {
    await store.openBox('authKey');
    final res = await store.getData(key: 'access_token');

    if (res != null) {
      var auth = LoginModel(accessToken: res, refreshToken: '');
      return right(auth);
    } else {
      return left(const NetworkError.timeout());
    }
  }

  @override
  Future<void> closeStorage() async {
    await store.close();
  }
}
