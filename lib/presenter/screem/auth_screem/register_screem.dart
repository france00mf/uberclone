import 'package:flutter/material.dart';

import '../../presenter.dart';

class RegisterScreem extends StatelessWidget {
  static String idScreem = "register_screem";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Register Page, UBER CLONE ANGOLA\nMade by France"),
            ),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreemView.idScreem, (route) => false);
                },
                child: Text("Continuar")),
          ],
        ),
      ),
    );
  }
}
