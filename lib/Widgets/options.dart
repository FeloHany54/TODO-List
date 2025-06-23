import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String title;
  final IconData icon;
  final File? selectedimage;
  final VoidCallback onpressed;
  final Colors? color;
  const Options({
    this.selectedimage,
    this.color,
    required this.onpressed,
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          color: selectedimage == null ? Colors.grey : Colors.red,
          onPressed: onpressed,
          icon: Icon(icon),
        ),
        Text(
          title,
          style: TextStyle(
            color:
                selectedimage == null ? Colors.grey.shade500 : Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
