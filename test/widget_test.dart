// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_selecti/model/user_model.dart';
import 'package:test_selecti/repository/login_repository.dart';
import 'package:test_selecti/viewmodel/login_viewmodel.dart';
import 'widget_test.mocks.dart';

@GenerateMocks([
  LoginRepository,
  LoginViewModel,
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

  test('verifica se retorna uma senha falsa', () async {

    late LoginRepository loginRepository = MockLoginRepository();

    when(loginRepository.getResponse())
        .thenReturn({"message": "senha invalida"});

    expect(loginRepository.getResponse(), {"message": "senha invalida"});
  });

  test('verifica o parse é realizado', () async {

    late LoginViewModel loginViewModel = MockLoginViewModel();

    String email = "daniel@email.com";
    String password = "123";

    when(loginViewModel.login(email, password))
        .thenReturn(UserModel.fromJson({"id": "123", "name": "test", "username": "test", "email": "test@email.com"}));

    expect(loginViewModel.login(email, password), isA<UserModel>());
  });
}
