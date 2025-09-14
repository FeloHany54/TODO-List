
import 'package:flutter/material.dart';



ThemeData lightMode = ThemeData(
  brightness: Brightness.light,

  appBarTheme: AppBarTheme(backgroundColor: Color(0xffD9D9D9), ),

  colorScheme: ColorScheme.light(
   // primary: Color(0xff8875FF),
      secondary: Color(0xffbbb1ff)
  ),

  primaryColorLight: Color(0xffD9D9D9),

  //hintColor: Color(0xffbbb1ff),

  dividerColor: Colors.grey,

    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color(0xffD9D9D9),),

 // focusColor: Color(0xffbbb1ff),
   // hoverColor: Color(0xffbbb1ff),

    checkboxTheme:CheckboxThemeData(fillColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
     // WidgetState.focused: Color(0xffbbb1ff),
     // WidgetState.pressed | WidgetState.hovered: Color(0xffbbb1ff),
      WidgetState.any: Colors.white70,
    }),
    ),
  // iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
  //   WidgetState.focused: Colors.grey,
  //   WidgetState.pressed | WidgetState.hovered: Colors.grey,
  //   WidgetState.any: Colors.black,
  // }),)),
  //primaryTextTheme: TextTheme(displaySmall: TextStyle(color: Colors.black))
);