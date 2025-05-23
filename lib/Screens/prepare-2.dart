import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-1.dart';
import 'package:todo/Screens/prepare-3.dart';
import 'package:todo/Widgets/prepare.dart';

class SecondPrepare extends StatelessWidget {
  const SecondPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      aimNextWidget: ThirdPrepare(),
      buttomHeight: 48,
      buttomText: "NEXT",
      buttomWidth: 90,
      descriptionText1: "In Uptodo  you can create your",
      descriptionText2: "personalized routine to stay productive",
      firstColor: Colors.black,
      secondColor: Color(0xff0080FF),
      thirdColor: Colors.black,
      image: "assets/prepare2.png",
      imageHeight: 296,
      imageWidth: 271,
      pageTitle: "Create daily routine",
      aimBackWidget: FirstPrepare(),
      pageNum: 2,
    );
  }
}
