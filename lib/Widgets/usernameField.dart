import 'package:flutter/material.dart';
import 'package:todo/generated/l10n.dart';

class Usernamefield extends StatelessWidget {
  Usernamefield({super.key});
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        S.of(context).Username,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: TextField(
        controller: emailController,
        cursorColor: Colors.black,
        cursorErrorColor: Colors.red,
        cursorWidth: 2,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: S.of(context).Username,
          hoverColor: Colors.grey,
          counterStyle: TextStyle(color: Colors.black),
          focusColor: Colors.black,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            gapPadding: 30,
            borderSide: BorderSide(
              color: Colors.black,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
