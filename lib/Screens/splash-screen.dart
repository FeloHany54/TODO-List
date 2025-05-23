import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => FirstPrepare()),
      ),
    );
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
