import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:send_and_recieve_data/user_model.dart';

String? res;
String? error;

 const Url ='https://sportive-23.herokuapp.com/api/v1/auth/signup';
 Future<UserModel?>signUp(String firstNamee,
String lastNamee,
String emailAddresss,
String passWordd) async{
  try {
    http.Response response = await http.post(Uri.parse(Url),
        headers : {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "firstName": firstNamee,
          "lastName": lastNamee,
          "email": emailAddresss,
          "password": passWordd,
        })
    );
    if (response.statusCode == 200){
        final String responseString = response.body;
        return userModelFromJson(responseString);
    }else{
      print(response.statusCode);
      res = "Sign UP faild please check your data and Register again";
    }

  }catch(e){
    error = e.toString();
    print(e);
  }
}
