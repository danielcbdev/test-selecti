import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_selecti/model/user_model.dart';
import 'package:test_selecti/repository/login_repository.dart';

class LoginViewModel{

  final emailAlert = ValueNotifier<String>("");
  final passwordAlert = ValueNotifier<String>("");
  final LoginRepository loginRepository = LoginRepository();

  UserModel? login(String email, String password){
    if(email == "daniel@email.com" && password == "123") {
      Map<String, dynamic>? result = loginRepository.getResponse();
      return UserModel.fromJson(jsonDecode(result.toString()));
    }
  }
}