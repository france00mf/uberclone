import '../domain.dart';

abstract class Autentication {
  Future<AccountEntity> auth(AuthenticatiomParams params);
}

class AuthenticatiomParams{
  String email;
  String password;
  AuthenticatiomParams({
    required String email,
    required String password
  })
}