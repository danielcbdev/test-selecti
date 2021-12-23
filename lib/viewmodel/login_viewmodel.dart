import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_selecti/model/user_model.dart';
import 'package:test_selecti/repository/login_repository.dart';

class LoginViewModel{

  final emailAlert = ValueNotifier<String>("");
  final passwordAlert = ValueNotifier<String>("");
  final LoginRepository loginRepository = LoginRepository();

  updatePasswordAllert(String newPassword){
    passwordAlert.value = newPassword;
  }

  bool loginTest(String email, String password){
    if(email == "test@email.com" && password == "12345678") {
      return true;
    } else{
      return false;
    }
  }

  UserModel? login(String email, String password){
    if(email == "test@email.com" && password == "12345678") {
      Map<String, dynamic>? result = loginRepository.getResponse(email, password);
      if(result != null) return UserModel.fromJson(jsonDecode(result.toString()));
    }
  }
}