import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo/Screens/splash-screen.dart';
import 'package:todo/Widgets/login&registerData.dart';
import 'package:todo/Widgets/prfileData.dart';
import 'package:todo/Widgets/user_Model.dart';
import 'package:todo/generated/l10n.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginRegisterData()),
        ChangeNotifierProvider(create: (context) => PrfileData()),
        ChangeNotifierProvider(create: (context) => UserModel()),
      ],
      child: TODO(),
    ),
  );
}

class TODO extends StatelessWidget {
  const TODO({super.key});

  @override
  Widget build(BuildContext context) {
    final userlan = Provider.of<PrfileData>(context);
    return MaterialApp(
      locale: userlan.lan == "ar" ? Locale("ar") : Locale("en"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
