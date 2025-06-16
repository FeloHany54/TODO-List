import 'package:shared_preferences/shared_preferences.dart';

class LoginRegisterData {
  String? passwordController;
  String? confirmPasswordController;
  String? emailController;

  userDataLogin(passwordController, emailController) async {
    final SharedPreferences password = await SharedPreferences.getInstance();
    final SharedPreferences email = await SharedPreferences.getInstance();

    password.setString("Password", passwordController);
    email.setString("Email", emailController);
  }

  userDataRegister(
    confirmPasswordController,
    passwordController,
    emailController,
  ) async {
    userDataLogin(passwordController, emailController);
    final SharedPreferences confirmPassword =
        await SharedPreferences.getInstance();
    confirmPassword.setString("Password", confirmPasswordController);
  }
}
