import 'package:flutter/material.dart';

import '../../presenter/screem/screem.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginScreem.idScreem: (context) => LoginScreem(),
  RegisterScreem.idScreem: (context) => RegisterScreem(),
  HomeScreemView.idScreem: (context) =>
      HomeScreemView(title: "Uber Clone Home page")
};
