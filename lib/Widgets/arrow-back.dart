import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key, required this.aimArrowBack});
  final Widget aimArrowBack;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(
          context,
        ).pop(MaterialPageRoute(builder: (context) => aimArrowBack));
      },
      icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
    );
  }
}
