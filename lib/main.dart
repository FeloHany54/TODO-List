import 'package:flutter/material.dart';
import 'package:todo/Screens/splash-screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TODO());
}

class TODO extends StatelessWidget {
  const TODO({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
