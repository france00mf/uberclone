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
  void request({@required String? url, @required String? mathod}) {
    print("Http Client Requues Maked :: ");
    print(url);
  }
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late Faker faker;
  late final String url;
  late HttpClientSpy httpClient;
  late RemoteAuthentication sut;

  setUp(() {
    faker = Faker();
    url = faker.internet.httpUrl();
    httpClient = HttpClientSpy();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should be  RemoteAuthentication call httpClient with url correct',
      () async {
    print(url);
    sut.auth();
    verifyNever(httpClient.request()).called(0);
  });
}
