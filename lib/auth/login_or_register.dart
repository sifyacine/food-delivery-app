import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/login_page.dart';
import 'package:fooddeliveryapp/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  _LoginOrRegisterState createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  /// initially show login page
  bool showLoginPage = true;

  /// toggle between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(onTab: togglePages);
    }else {
      return RegisterPage(onTab: togglePages);
    }
  }
}
