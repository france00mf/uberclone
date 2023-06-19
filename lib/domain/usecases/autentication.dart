import '../domain.dart';

abstract class Autentication {
  Future<AccountEntity> auth(AuthenticatiomParams params);
}

class AuthenticatiomParams {
  late String email;
  late String password;
  AuthenticatiomParams({required String email, required String password});
}
