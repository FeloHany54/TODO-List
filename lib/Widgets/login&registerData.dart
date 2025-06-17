import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginRegisterData extends ChangeNotifier {
  Future<void> userEmail(String email) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Email", email);
    notifyListeners();
  }

  Future<void> userGetEmail() async {
    final user = await SharedPreferences.getInstance();
    String em = user.getString("Email") ?? " ???@gmail.com";
    log(em);
    notifyListeners();
  }

  Future<void> userPassword(String password) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Password", password);
    notifyListeners();
  }

  Future<void> userGetPassword() async {
    final user = await SharedPreferences.getInstance();
    String pass = user.getString("Password") ?? "???????";
    log(pass);
    notifyListeners();
  }

  Future<void> userConfirmPassword(String confirmPassword) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Password", confirmPassword);
    notifyListeners();
  }
}
