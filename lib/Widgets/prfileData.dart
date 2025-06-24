import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrfileData extends ChangeNotifier {
  Future<void> userGetEmail() async {
    final user = await SharedPreferences.getInstance();
    String email = user.getString("UserName") ?? " ???@gmail.com";

    print(email);
  }

  Future<void> userGetPssword() async {
    final user = await SharedPreferences.getInstance();
    String password = user.getString("Password") ?? "???????";
    print(password);
  }
}
