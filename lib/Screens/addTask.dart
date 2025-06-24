import 'package:flutter/material.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Widgets/arrow-back.dart';

// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  AddTask({super.key});
  TextEditingController dateController = TextEditingController();
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        leading: ArrowBack(aimArrowBack: HomeScreen()),
        title: Text(
          "Your Task ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Your Task",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: dateController,
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Task",
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
            ),
            SizedBox(height: 50),
            ListTile(
              title: Text(
                "Deadline",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: TextField(
                controller: taskController,
                cursorColor: Colors.black,
                cursorErrorColor: Colors.red,
                cursorWidth: 2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Deadline",
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
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pop(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              height: 48,
              minWidth: 327,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              color: Color(0xff8875FF),
              textColor: Colors.white,
              child: Text(
                "Add Task",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
