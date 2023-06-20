import 'package:faker/faker.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class RemoteAuthentication {
  final HttpClient? httpClient;
  final String? url;
  final Map? body;
  RemoteAuthentication(
      {@required this.httpClient, @required this.url, @required this.body});
  void auth() async {
    print("RemoteAuth Url's -> " + url.toString());
    await httpClient!.request(url: url, mathod: 'post');
  }
}

abstract class HttpClient {
  request({@required String? url, @required String? mathod, Map? body});
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late Faker faker;
  late final String url;
  late HttpClientSpy httpClient;
  late RemoteAuthentication sut;
  late Map? body = {
    'email': faker.internet.email(),
    'password': faker.internet.password()
  };

  setUp(() {
    faker = Faker();
    url = faker.internet.httpUrl();
    httpClient = HttpClientSpy();
    sut = RemoteAuthentication(httpClient: httpClient, url: url, body: body);
  });

  test('Should be  RemoteAuthentication call httpClient with correct values',
      () async {
    print(url);
    sut.auth();
    // verifyNever(httpClient.request()).called(0);
    verify(httpClient.request(url: url, mathod: 'post'));
  });
}
