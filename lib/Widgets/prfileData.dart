import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrfileData extends ChangeNotifier {
  String? email;
  String? password;
  String? lan;

  Future<void> userGetEmail() async {
    final user = await SharedPreferences.getInstance();
    email = user.getString("UserName") ?? " ???@gmail.com";
    notifyListeners();
  }

  Future<void> userGetPssword() async {
    final user = await SharedPreferences.getInstance();
    password = user.getString("Password") ?? "???????";
    notifyListeners();
  }

  Future<void> language() async {
    final user = await SharedPreferences.getInstance();
    lan = user.getString("Language") ?? "en";
    notifyListeners();
  }
}
