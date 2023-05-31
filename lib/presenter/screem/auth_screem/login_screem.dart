import 'package:flutter/material.dart';

class LoginScreem extends StatelessWidget {
  static String idScreem = "login_screem";

  const LoginScreem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Login Page, UBER CLONE ANGOLA"),
          )
        ],
      ),
    ));
  }
}
