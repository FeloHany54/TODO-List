import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-2.dart';
import 'package:todo/Widgets/prepare.dart';
import 'package:todo/generated/l10n.dart';

class FirstPrepare extends StatelessWidget {
  const FirstPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      buttomHeight: 48,
      buttomWidth: 90,
      buttomText: S.of(context).PrepareNext,
      firstColor: Color(0xff0080FF),
      secondColor: Colors.black,
      thirdColor: Colors.black,
      descriptionText1: S.of(context).FirstPrepareDescription1,
      descriptionText2: S.of(context).FirstPrepareDescription2,
      pageTitle: S.of(context).FirstPrepareTitle,
      image: "assets/prepare1.png",
      imageHeight: 278,
      imageWidth: 213,
      aimNextWidget: SecondPrepare(),
      pageNum: 1,
    );
  }
}
