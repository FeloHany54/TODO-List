import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-2.dart';
import 'package:todo/Screens/welcome.dart';
import 'package:todo/Widgets/prepare.dart';

class ThirdPrepare extends StatelessWidget {
  const ThirdPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      aimNextWidget: Welcome(),
      buttomHeight: 48,
      buttomWidth: 150,
      buttomText: "GET STARTED",
      descriptionText1: "You can organize your daily tasks by ",
      descriptionText2: "adding your tasks into separate categories",
      pageTitle: "Orgonaize your tasks",
      firstColor: Colors.black,
      secondColor: Colors.black,
      thirdColor: Color(0xff0080FF),
      image: "assets/prepare3.png",
      imageHeight: 251,
      imageWidth: 257,
      pageNum: 3,
      aimBackWidget: SecondPrepare(),
    );
  }
}
