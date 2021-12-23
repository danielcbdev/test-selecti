import 'package:flutter/material.dart';

class LoginViewModel{

  final emailAlert = ValueNotifier<String>("");
  final passwordAlert = ValueNotifier<String>("");

  login(String email, String password){
    if(email == "daniel@email.com" && password == "123") {
      return true;
    } else {
      return false;
    }
  }
}