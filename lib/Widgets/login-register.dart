import 'package:flutter/material.dart';
import 'package:todo/Screens/welcome.dart';
import 'package:todo/Widgets/arrow-back.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({
    super.key,
    required this.aimLink,
    required this.askText,
    required this.buttomAim,
    required this.screenTitle,
    required this.buttomText,
    this.confirmPass,
    required this.linkText,
  });
  final String screenTitle;
  final Widget? confirmPass;
  final String buttomText;
  final Widget buttomAim;
  final String askText;
  final String linkText;
  final Widget aimLink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        leading: ArrowBack(aimArrowBack: Welcome()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              screenTitle,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            ListTile(
              title: Text(
                "Username",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: TextEditingController(),
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Username",
                  hoverColor: Colors.grey,
                  counterStyle: TextStyle(color: Colors.black),
                  focusColor: Colors.black,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    gapPadding: 10,
                    borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: TextEditingController(),
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Password",
                  hoverColor: Colors.grey,
                  counterStyle: TextStyle(color: Colors.black),
                  focusColor: Colors.black,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    gapPadding: 10,
                    borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            confirmPass!,

            SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => buttomAim),
                );
              },
              color: Color(0xff8687E7),
              child: Text(
                buttomText,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  askText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => aimLink),
                    );
                  },
                  child: Text(
                    linkText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
