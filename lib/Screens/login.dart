import 'package:flutter/material.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Screens/register.dart';
import 'package:todo/Widgets/login-register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginRegister(
      aimLink: Register(),
      askText: "Don’t have an account?",
      buttomAim: HomeScreen(),
      buttomText: "Login",

      linkText: " Register",
      screenTitle: "Login",
      confirmPass: SizedBox(height: 40),
    );
  }
}
