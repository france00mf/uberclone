import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:uberclone/data/data.dart';
import 'package:uberclone/domain/domain.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late Faker faker;
  late final String url;
  late HttpClientSpy httpClient;
  late RemoteAuthentication sut;
  late final body;

  setUp(() {
    faker = Faker();
    url = faker.internet.httpUrl();

    httpClient = HttpClientSpy();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should be  RemoteAuthentication call httpClient with correct values',
      () async {
    body = AuthenticatiomParams(
        email: faker.internet.email(), password: faker.internet.password());
    print(url);
    await sut.auth(body);
    verify(httpClient.request(url: url, mathod: 'post', body: {
      'email': faker.internet.email(),
      'password': faker.internet.password()
    }));
  });

  test('Should be  httpClient call with eny values when returns 400', () async {
    when(httpClient.request(
            url: anyNamed('url'),
            mathod: anyNamed('method'),
            body: anyNamed('body')))
        .thenThrow(HttpError.badRequest);

    body = AuthenticatiomParams(
        email: faker.internet.email(), password: faker.internet.password());
    print(url);
    final future = sut.auth(body);
    expect(future, throwsA(DomainError.unexpected));
  });
}
