import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Screens/prepare-1.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //bool loggedIn = false;
  isLogged() async {
    final user = await SharedPreferences.getInstance();
    user.getBool("LoggedIn");
    if (user.getBool("LoggedIn") == true) {
      Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        ),
      );
    } else {
      Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FirstPrepare()),
        ),
      );
    }
  }

  @override
  void initState() {
    //final user = await SharedPreferences.getInstance();
    //loggedIn = user.getBool("LoggedIn") ?? false;
    super.initState();
    isLogged();
    // if (isLogged() == true) {
    //   Timer(
    //     Duration(seconds: 1),
    //     () => Navigator.of(
    //       context,
    //     ).push(MaterialPageRoute(builder: (context) => HomeScreen())),
    //   );
    // } else {
    //   Timer(
    //     Duration(seconds: 1),
    //     () => Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => FirstPrepare()),
    //     ),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/todooooo.png",
                fit: BoxFit.fill,
                height: 80,
                width: 95,
              ),
            ],
          ),
          SizedBox(height: 36),
          Text(
            textAlign: TextAlign.center,
            "UPTODO",
            style: TextStyle(
              color: Color(0xff8875FF),
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
