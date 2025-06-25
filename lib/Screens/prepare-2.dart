import 'package:flutter/material.dart';
import 'package:todo/Screens/prepare-1.dart';
import 'package:todo/Screens/prepare-3.dart';
import 'package:todo/Widgets/prepare.dart';
import 'package:todo/generated/l10n.dart';

class SecondPrepare extends StatelessWidget {
  const SecondPrepare({super.key});

  @override
  Widget build(BuildContext context) {
    return Prepare(
      aimNextWidget: ThirdPrepare(),
      buttomHeight: 48,
      buttomText: S.of(context).PrepareNext,
      buttomWidth: 90,
      descriptionText1: S.of(context).SecondPrepareDescription1,
      descriptionText2: S.of(context).SecondPrepareDescription2,
      firstColor: Colors.black,
      secondColor: Color(0xff0080FF),
      thirdColor: Colors.black,
      image: "assets/prepare2.png",
      imageHeight: 296,
      imageWidth: 271,
      pageTitle: S.of(context).SecondPrepareTitle,
      aimBackWidget: FirstPrepare(),
      pageNum: 2,
    );
  }
}
