import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/splash-screen.dart';
import 'package:todo/Widgets/light_theme.dart';
import 'package:todo/Widgets/login&registerData.dart';
import 'package:todo/Widgets/prfileData.dart';
import 'package:todo/Widgets/user_Model.dart';
import 'package:todo/generated/l10n.dart';

import 'Widgets/dark_theme.dart';

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

    //final userLanguage = Provider.of<PrfileData>(context);
    //String lan = userLanguage.lan;
    String lan="en";
    isArabic() async {
      final user = await SharedPreferences.getInstance();
      setState(){
      if(user.getBool("Language") == true){return lan = "ar";}}


    }
    return MaterialApp(
      locale:  Locale(lan) ,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      //theme: lightMode,
      //darkTheme:darkMode,
      home: SplashScreen(),
    );
  }
}
