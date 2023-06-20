import 'package:meta/meta.dart';

abstract class HttpClient {
  request({@required String? url, @required String? mathod, Map? body});
}
