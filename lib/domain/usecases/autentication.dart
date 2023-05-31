import '../domain.dart';

abstract class Autentication {
  Future<AccountEntity> auth();
}
