import 'package:meta/meta.dart';

import '../data.dart';

class RemoteAuthentication {
  final HttpClient? httpClient;
  final String? url;

  RemoteAuthentication({@required this.httpClient, @required this.url});
  Future<dynamic> auth(Map? body) async {
    print("RemoteAuth Url's -> " + url.toString());
    await httpClient!.request(url: url, mathod: 'post', body: body);
  }
}
