import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginRepository {
  Map<String, dynamic>? getResponse(){
    Map<String, dynamic> map = {
      "email": "email.com",
      "password": "123456",
    };
    try{
      Future<http.Response> response = http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/users/"),
        body: map
      );
      response.then((value) {
        if (value.statusCode == 200) {
          Map<String, dynamic> data = json.decode(value.body);
          return data;
        }
      });
    } catch(e){
      print("errp: "+ e.toString());
    }
  }
}
