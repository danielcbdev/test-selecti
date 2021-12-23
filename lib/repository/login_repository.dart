import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginRepository {
  Map<String, dynamic>? getResponse(){
    try{
      Future<http.Response> response = http.get(Uri.parse("https://jsonplaceholder.typicode.com/users/"));
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
