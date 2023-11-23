import 'package:artistic_app/routes/route_name.dart';
import 'package:artistic_app/routes/undefined_screen.dart';
import 'package:artistic_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  String? routeName = settings.name;
  // Object? args = settings.arguments;

  switch (routeName) {
    case RouteName.loginScreen:
      return MaterialPageRoute<Widget>(builder: (_) => const LoginScreen());
    default:
      return MaterialPageRoute(builder: (_) => const UndefinedPage());
  }
}
