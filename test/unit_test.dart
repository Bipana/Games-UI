import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;
//import 'package:mockito/mockito.dart';

import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}
void main() {
  test('returns a Map if there is no error', () async {
    // Arrange
    //mock http client(to simulate getting data from API in testing).
    http.Client mockhttpClient = MockHttpClient();
    when(() => mockhttpClient.get(Uri.parse('https://example.com')))
        .thenAnswer((value) async {
      var response = http.Response('{"count": 1}', 200);
      return response;
    });

    // Act
    final response = await mockhttpClient.get(Uri.parse('https://example.com'));
    var res = json.decode(response.body);

    // Assert
    expect(res, {"count": 1});
  });

  test('Should throw error when response code is 404', () async {
    //Arrange(prepare object for configuration for our testing)
    http.Client mockhttpClient = MockHttpClient();
    when(() => mockhttpClient.get(Uri.parse('https://example.com')))
        .thenAnswer((value) async {
      var response = http.Response('Not found', 404);
      return response;
    });
    //Act
    final response = await mockhttpClient.get(Uri.parse('https://example.com'));

    // Assert
    expect(response.statusCode, 404);

    try {
      var res = json.decode(response.body);
      //var res = json.decode(response.body);
    } catch (e) {
      expect(e, isA<FormatException>());
    }
  });
}