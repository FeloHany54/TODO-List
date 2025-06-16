import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Screens/login.dart';
import 'package:todo/Widgets/login&registerData.dart';
import 'package:todo/Widgets/login-register.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({super.key});

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final register = Provider.of<LoginRegisterData>(context);
    final login = Provider.of<LoginRegister>(context);
    register.userDataRegister(
      confirmPasswordController,
      login.passwordController,
      login.emailController,
    );
    return LoginRegister(
      aimLink: Login(),
      askText: "Already have an account?",
      buttomAim: HomeScreen(),
      buttomText: "Register",
      linkText: "login",
      screenTitle: "Register",
      confirmPass: ListTile(
        title: Text(
          "Confirm Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: TextField(
          controller: confirmPasswordController,
          cursorColor: Colors.black,
          cursorErrorColor: Colors.red,
          cursorWidth: 2,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: "Confirm Password",
            hoverColor: Colors.grey,
            counterStyle: TextStyle(color: Colors.black),
            focusColor: Colors.black,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              gapPadding: 10,
              borderSide: BorderSide(
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
