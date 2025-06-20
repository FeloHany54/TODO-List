import 'package:flutter/material.dart';
import 'package:todo/Widgets/passwordField.dart';
import 'package:todo/Widgets/usernameField.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({super.key});

  //final login = Provider.of<LoginRegister>(context);

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          "Register",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [SizedBox(height: 50), Usernamefield(), Passwordfield()],
        ),
      ),
    );

    //   return LoginRegister(
    //     aimLink: Login(),
    //     askText: "Already have an account?",

    //     buttomText: "Register",
    //     linkText: "login",
    //     screenTitle: "Register",
    //     confirmPass: ListTile(
    //       title: Text(
    //         "Confirm Password",
    //         style: TextStyle(
    //           color: Colors.black,
    //           fontSize: 16,
    //           fontWeight: FontWeight.w400,
    //         ),
    //       ),
    //       subtitle: TextField(
    //         controller: confirmPasswordController,
    //         cursorColor: Colors.black,
    //         cursorErrorColor: Colors.red,
    //         cursorWidth: 2,
    //         style: TextStyle(color: Colors.black),
    //         decoration: InputDecoration(
    //           hintText: "Confirm Password",
    //           hoverColor: Colors.grey,
    //           counterStyle: TextStyle(color: Colors.black),
    //           focusColor: Colors.black,

    //           border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(4),
    //             gapPadding: 10,
    //             borderSide: BorderSide(
    //               color: Colors.black,
    //               style: BorderStyle.solid,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
  }
}
