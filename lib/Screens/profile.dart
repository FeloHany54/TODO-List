import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Widgets/arrow-back.dart';
import 'package:todo/Widgets/login&registerData.dart';
import 'package:todo/Widgets/prfileData.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  // Future<void> userGetEmail() async {
  //   SharedPreferences user = await SharedPreferences.getInstance();
  //   String em = user.getString("UserName") ?? " ???@gmail.com";
  //   log(em);
  // }

  // Future<void> userGetPassword() async {
  //   SharedPreferences user = await SharedPreferences.getInstance();
  //   String pass = user.getString("Password") ?? "???????";
  //   log(pass);
  // }

  userData() async {
    // final user = await SharedPreferences.getInstance();

    // user.getString("UserName");
  }

  @override
  Widget build(BuildContext context) {
    final userdata = Provider.of<PrfileData>(context);
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: ArrowBack(aimArrowBack: HomeScreen()),
      ),
      body: Column(
        children: [
          Text(
            "Email : ${userdata.email}",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "Password : ${userdata.password}",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
