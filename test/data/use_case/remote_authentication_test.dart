import 'package:faker/faker.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class RemoteAuthentication {
  final HttpClient? httpClient;
  final String? url;
  RemoteAuthentication({@required this.httpClient, @required this.url});
  void auth() async {
    print("RemoteAuth Url's -> " + url.toString());
    httpClient!.request(url: url, mathod: 'post');
  }
}

class HttpClient {
  void request({@required String? url, @required String? mathod}) {}
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test('Should be  RemoteAuthentication call httpClient with url correct',
      () async {
    Faker faker = Faker();
    final String url = faker.internet.httpUrl();
    HttpClient httpClient = HttpClient();
    RemoteAuthentication sut =
        RemoteAuthentication(httpClient: httpClient, url: url);
    print(url);

    sut.auth();
    // verify(httpClient.request());
  });
}