// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_selecti/repository/login_repository.dart';
import 'widget_test.mocks.dart';

@GenerateMocks([
  LoginRepository
], customMocks: [
  MockSpec<LoginRepository>(as: #MockMockitoExampleRelaxed, returnNullOnMissingStub: true),
])
void main(){
  test('verifica se o retorno é um map', () async {

    late LoginRepository loginRepository = MockLoginRepository();

    when(loginRepository.getResponse())
        .thenReturn({"title": "test"});

    expect(loginRepository.getResponse(), isA<Map>());
  });
}


/*

@GenerateMocks([
  MockitoTest
], customMocks: [
  MockSpec<MockitoTest>(as: #MockMockitoExampleRelaxed, returnNullOnMissingStub: true),
])
void main(){
  test('verifica se o retorno é um map', () async {

    late MockitoTest mockitoExample = MockMockitoTest();

    when(mockitoExample.getResponse())
    .thenReturn({"title": "test"});

    expect(mockitoExample.getResponse(), isA<Map>());
  });
}

class MockitoTest {
  Map<String, dynamic>? getResponse(){
    Future<http.Response> response = http.get(Uri.parse("https://jsonplaceholder.typicode.com/users/"));
    response.then((value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> data = json.decode(value.body);
        return data;
      }
    });
  }
}


 */