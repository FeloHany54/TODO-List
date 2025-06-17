import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Widgets/arrow-back.dart';
import 'package:todo/Widgets/login&registerData.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LoginRegisterData>(context);
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
            "Email : ${user.userGetEmail()}",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "Password : ${user.userGetPassword()}",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
