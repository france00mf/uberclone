import 'package:flutter/material.dart';

import '../screem/screem.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreemView(title: 'Uber Clone Home Page'),
    );
  }
}
