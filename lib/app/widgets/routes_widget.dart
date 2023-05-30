import 'package:flutter/material.dart';
import 'package:uberclone/presenter/screem/auth_screem/register_screem.dart';

import '../../presenter/screem/screem.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginScreem.idScreem: (context) => LoginScreem(),
  RegisterScreem.idScreem: (context) => RegisterScreem(),
};
