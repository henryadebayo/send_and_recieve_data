import 'dart:convert';

import 'package:flutter/material.dart';
UserModel userModelFromJson(String atrbutes) => UserModel.fromJson(json.decode(atrbutes));
String userModelToJson(UserModel data)=> json.encode(data.toJson());
class UserModel{
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? passWord;

  UserModel({
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.passWord
});
factory UserModel.fromJson(Map<String, dynamic>json)=> UserModel(
  firstName: json['firstname'],
  lastName: json['lastname'],
  emailAddress: json['email'],
  passWord: json['password'],
);
Map<String, dynamic> toJson() => {
  'firstname':firstName,
  'lastname':lastName,
  'email':emailAddress,
  'password':passWord,
};
}