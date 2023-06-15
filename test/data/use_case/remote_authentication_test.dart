import 'package:flutter_test/flutter_test.dart';

class RemoteAuthentication {
  auth() {}
}
class HttpClient{
  request(){}
}

void main() {
  test('Should be login with corrects values on httpClient and url'), () async {
    RemoteAuthentication sut = RemoteAuthentication();
    await sut.auth();
  });
}
