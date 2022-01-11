import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 const Url ='https://sportive-23.herokuapp.com/api/v1/auth/signup';

void postData() async{
  http.Response response = await http.post(Uri.parse(Url),
    headers: <String, String>{
    'Content-Type':'application/json',
    },
    body: josnEncode(<>{})
  );
}