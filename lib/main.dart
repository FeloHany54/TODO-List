import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Screens/splash-screen.dart';
import 'package:todo/Widgets/login&registerData.dart';
import 'package:todo/Widgets/prfileData.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginRegisterData()),
        ChangeNotifierProvider(create: (context) => PrfileData()),
      ],
      child: const TODO(),
    ),
  );
}

class TODO extends StatelessWidget {
  const TODO({super.key});

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
