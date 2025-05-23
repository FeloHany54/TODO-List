import 'package:flutter/material.dart';
import 'package:todo/Screens/login.dart';
import 'package:todo/Screens/prepare-2.dart';
import 'package:todo/Screens/prepare-3.dart';

class Movement extends StatefulWidget {
  const Movement({super.key});

  @override
  State<Movement> createState() => _MovementState();
}

class _MovementState extends State<Movement> {
  toSecondPrepare() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => SecondPrepare()));
  }

  toThirdPrepare() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => ThirdPrepare()));
  }

  toLogin() {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
