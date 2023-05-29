import 'dart:js';

import 'package:flutter/material.dart';

import '../../presenter/screem/screem.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginScreem.page: (context) => LoginScreem(),
};
