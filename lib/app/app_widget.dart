import 'package:flutter/material.dart';

import '../presenter/screem/screem.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clone',
      initialRoute: LoginScreem.page,
      routes: {},
      theme: ThemeData(fontFamily: 'Arial'),
      home: const HomeScreemView(title: 'Uber Clone Home Page'),
    );
  }
}
