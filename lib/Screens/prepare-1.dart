import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-2.dart';
import 'package:todo/Widgets/prepare.dart';

class FirstPrepare extends StatelessWidget {
  const FirstPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      buttomHeight: 48,
      buttomWidth: 90,
      buttomText: "NEXt",
      firstColor: Color(0xff0080FF),
      secondColor: Colors.black,
      thirdColor: Colors.black,
      descriptionText1: "You can easily manage all of your daily ",
      descriptionText2: "tasks in DoMe for free",
      pageTitle: "Manage your tasks",
      image: "assets/prepare1.png",
      imageHeight: 278,
      imageWidth: 213,
      aimNextWidget: SecondPrepare(),
      pageNum: 1,
    );
  }
}
