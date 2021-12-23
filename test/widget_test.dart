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
import 'widget_test.mocks.dart';


Future fetchFromDatabase(http.Client client) async {
  final response =
  await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users/'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('exception occured!!!!!!');
  }
}

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
  Map<String, dynamic>? getResponse() => test();

  Map<String, dynamic>? test() {
    Future<http.Response> response = http.get(Uri.parse("https://jsonplaceholder.typicode.com/users/"));
    response.then((value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> data = json.decode(value.body);
        return data;
      }
    });
  }
}
