import '../domain.dart';

abstract class Autentication {
  Future<AccountEntity> auth({
    String email,
    String password
  });
}
