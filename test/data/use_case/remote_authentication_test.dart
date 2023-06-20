import 'package:faker/faker.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class RemoteAuthentication {
  final HttpClient? httpClient;
  final String? url;

  RemoteAuthentication({@required this.httpClient, @required this.url});
  Future<dynamic> auth(Map? body) async {
    print("RemoteAuth Url's -> " + url.toString());
    await httpClient!.request(url: url, mathod: 'post', body: body);
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
  late Map? body;

  setUp(() {
    faker = Faker();
    url = faker.internet.httpUrl();
    body = {
      'email': faker.internet.email(),
      'password': faker.internet.password()
    };
    httpClient = HttpClientSpy();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should be  RemoteAuthentication call httpClient with correct values',
      () async {
    print(url);
    await sut.auth(body);
    verify(httpClient.request(url: url, mathod: 'post', body: body));
  });
}
