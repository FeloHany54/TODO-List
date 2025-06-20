import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Screens/register.dart';
import 'package:todo/Widgets/login&registerData.dart';

// ignore: must_be_immutable
class LoginRegister extends StatelessWidget {
  LoginRegister({
    super.key,
    required this.aimLink,
    required this.askText,
    required this.screenTitle,
    required this.buttomText,
    this.confirmPass,
    required this.linkText,
  });
  final String screenTitle;
  final Widget? confirmPass;
  final String buttomText;
  final String askText;
  final String linkText;
  final Widget aimLink;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> userEmail(String email) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Email", email);
  }

  Future<void> userPassword(String password) async {
    final SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("Password", password);
  }

  @override
  Widget build(BuildContext context) {
    //final login = Provider.of<LoginRegisterData>(context);

    //Register? register;

    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              screenTitle,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            ListTile(
              title: Text(
                "Username / Email",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: emailController,
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Username / Email",
                  hoverColor: Colors.grey,
                  counterStyle: TextStyle(color: Colors.black),
                  focusColor: Colors.black,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    gapPadding: 30,
                    borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: passwordController,
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Password ",
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
            SizedBox(height: 20),
            confirmPass!,

            SizedBox(height: 40),
            MaterialButton(
              onPressed: () async {
                userEmail(emailController.text);
                userPassword(passwordController.text);
                if (buttomText == "Register") {}
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              color: Color(0xff8687E7),
              child: Text(
                buttomText,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  askText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => aimLink),
                    );
                  },
                  child: Text(
                    linkText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
