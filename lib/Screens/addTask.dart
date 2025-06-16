import 'package:flutter/material.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Widgets/arrow-back.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        leading: ArrowBack(aimArrowBack: HomeScreen()),
        title: Text(
          "Your Task ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
