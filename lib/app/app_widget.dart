import 'package:flutter/material.dart';

import '../presenter/screem/screem.dart';
import 'widgets/widgets.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clone BY Angola',
      initialRoute: LoginScreem.page,
      routes: routes,
      theme: ThemeData(fontFamily: 'Arial'),
    );
  }
}
