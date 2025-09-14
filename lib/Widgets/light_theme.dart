import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final lightMode = ThemeData(
    appBarTheme:AppBarTheme(backgroundColor: Color(0xffD9D9D9) ),
    hintColor: CupertinoColors.systemGrey,
    primaryColorLight:Color(0xffD9D9D9) ,
    brightness: Brightness.light);

final darkMode = ThemeData(

    brightness: Brightness.dark);