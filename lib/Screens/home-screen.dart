import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        color: Color(0xff8875FF),
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.black),
      ),
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
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
        child: Expanded(
          child: Column(
            children: [
              Text(
                "Tasks",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/LetsGo.png",
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
