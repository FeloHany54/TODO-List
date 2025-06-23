import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRegisterData extends ChangeNotifier {
  // Future<void> userEmail(String email) async {
  //   final SharedPreferences user = await SharedPreferences.getInstance();
  //   user.setString("Email", email);
  //   notifyListeners();
  // }

  // Future<void> userGetEmail() async {
  //   final user = await SharedPreferences.getInstance();
  //   String em = user.getString("UserName") ?? " ???@gmail.com";
  //   String pass = user.getString("Password") ?? "???????";
  //   PrfileData(email: em, password: pass);
  //   notifyListeners();
  // }

  // Future<void> userPassword(String password) async {
  //   final SharedPreferences user = await SharedPreferences.getInstance();
  //   user.setString("Password", password);
  //   notifyListeners();
  // }

  // void userGetPassword() {
  //   // SharedPreferences user = await SharedPreferences.getInstance();
  //   // String pass = user.getString("Password") ?? "???????";
  //   log(password);
  //   notifyListeners();
  // }

  Future<void> userConfirmPassword(String confirmPassword) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Password", confirmPassword);
    notifyListeners();
  }
}
