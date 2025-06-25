import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-2.dart';
import 'package:todo/Screens/welcome.dart';
import 'package:todo/Widgets/prepare.dart';
import 'package:todo/generated/l10n.dart';

class ThirdPrepare extends StatelessWidget {
  const ThirdPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      aimNextWidget: Welcome(),
      buttomHeight: 48,
      buttomWidth: 150,
      buttomText: S.of(context).GetStart,
      descriptionText1: S.of(context).ThirdPrepareDescription1,
      descriptionText2: S.of(context).ThirdPrepareDescription2,
      pageTitle: S.of(context).ThirdPrepareTitle,
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
