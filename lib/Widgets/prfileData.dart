import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrfileData extends ChangeNotifier {
  String? email;
  String? password;

  Future<void> userGetEmail() async {
    final user = await SharedPreferences.getInstance();
    email = user.getString("UserName") ?? " ???@gmail.com";
    password = user.getString("Password") ?? "???????";
  }
}
