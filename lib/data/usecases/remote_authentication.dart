import 'package:meta/meta.dart';

import '../../domain/domain.dart';
import '../data.dart';

class RemoteAuthentication {
  final HttpClient? httpClient;
  final String? url;

  RemoteAuthentication({@required this.httpClient, @required this.url});
  Future<dynamic> auth(AuthenticatiomParams params) async {
    final body = RemoteAuthenticationParams.fromDomain(params).toJson();
    print("RemoteAuth Url's -> " + url.toString());
    await httpClient!.request(url: url, mathod: 'post', body: body);
  }
}

class RemoteAuthenticationParams {
  final String? email;
  final String? secret;
  RemoteAuthenticationParams({@required this.email, @required this.secret});

  Map toJson() => {'email': email, 'password': secret};

  factory RemoteAuthenticationParams.fromDomain(AuthenticatiomParams params) =>
      RemoteAuthenticationParams(email: params.email, secret: params.password);
}
