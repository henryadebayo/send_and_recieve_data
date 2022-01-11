import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 const Url ='https://sportive-23.herokuapp.com/api/v1/auth/signup';
 void postData() async{
  try {
    http.Response response = await http.post(Uri.parse(Url),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: {
          "firstName": "John",
          "lastName": "Snow",
          "email": "johnsow@email.com",
          "password": "john123"
        }
    );
    print(response.statusCode);
  }catch(e){
    print(e);
  }
}