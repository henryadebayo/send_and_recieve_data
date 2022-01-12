import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String? res;
String? error;

 const Url ='https://sportive-23.herokuapp.com/api/v1/auth/signup';
 void postData() async{
  try {
    http.Response response = await http.post(Uri.parse(Url),
        headers : {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "firstName": "Johnn",
          "lastName": "Snoww",
          "email": "johnsoow@email.com",
          "password": "john1123"
        })
    );
    if (response.statusCode == 200){

      res = response.statusCode.toString();
      print(response.statusCode);
    }else{
      print(response.statusCode);
      res = "Sign UP faild please check your data and Register again";
    }

  }catch(e){
    error = e.toString();
    print(e);
  }
}
