// Mocks generated by Mockito 5.0.17 from annotations
// in test_selecti/test/widget_test.dart.
// Do not manually edit this file.

import 'package:flutter/material.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:test_selecti/model/user_model.dart' as _i5;
import 'package:test_selecti/repository/login_repository.dart' as _i3;
import 'package:test_selecti/viewmodel/login_viewmodel.dart' as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeValueNotifier_0<T> extends _i1.Fake implements _i2.ValueNotifier<T> {
}

class _FakeLoginRepository_1 extends _i1.Fake implements _i3.LoginRepository {}

/// A class which mocks [LoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginRepository extends _i1.Mock implements _i3.LoginRepository {
  MockLoginRepository() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [LoginViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginViewModel extends _i1.Mock implements _i4.LoginViewModel {
  MockLoginViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ValueNotifier<String> get emailAlert =>
      (super.noSuchMethod(Invocation.getter(#emailAlert),
              returnValue: _FakeValueNotifier_0<String>())
          as _i2.ValueNotifier<String>);
  @override
  _i2.ValueNotifier<String> get passwordAlert =>
      (super.noSuchMethod(Invocation.getter(#passwordAlert),
              returnValue: _FakeValueNotifier_0<String>())
          as _i2.ValueNotifier<String>);
  @override
  _i3.LoginRepository get loginRepository =>
      (super.noSuchMethod(Invocation.getter(#loginRepository),
          returnValue: _FakeLoginRepository_1()) as _i3.LoginRepository);
  @override
  _i5.UserModel? login(String? email, String? password) =>
      (super.noSuchMethod(Invocation.method(#login, [email, password]))
          as _i5.UserModel?);
}

/// A class which mocks [LoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMockitoExampleRelaxed extends _i1.Mock
    implements _i3.LoginRepository {}
