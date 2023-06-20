import 'package:meta/meta.dart';

import '../domain.dart';

abstract class Autentication {
  Future<AccountEntity> auth(AuthenticatiomParams params);
}

class AuthenticatiomParams {
  final String? email;
  final String? password;
  AuthenticatiomParams({@required this.email, @required this.password});
}
