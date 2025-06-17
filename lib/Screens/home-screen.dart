import 'package:flutter/material.dart';
import 'package:todo/Screens/addTask.dart';
import 'package:todo/Screens/profile.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.counter});
  int? counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateColor.resolveWith((
            Set<WidgetState> states,
          ) {
            return Color(0xff8875FF);
          }),
        ),

        onPressed: () {
          //counter = counter! + 1;
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddTask()));
        },
        icon: Icon(Icons.add, color: Colors.black),
      ),
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Profile()));
                },
                icon: Icon(Icons.person, color: Color(0xffD9D9D9)),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          "June 16,2025",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tasks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/let'sGo.png",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "To Add Your Task Press "
                  "  +  "
                  " ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
