import 'package:flutter_test/flutter_test.dart';

class RemoteAuthentication {
  void auth() {}
}

class HttpClient {
  void request() {}
}

// class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test(
      'Should be login with corrects values on RemoteAuthentication and httpClient',
      () async {
    RemoteAuthentication sut = RemoteAuthentication();
    HttpClient httpClient = HttpClient();
    sut.auth();
    // verify(httpClient.request()).called(1);
  });
}
