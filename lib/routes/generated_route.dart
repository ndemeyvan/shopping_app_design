import 'package:artistic_app/data/model/classes_model.dart';
import 'package:artistic_app/routes/route_name.dart';
import 'package:artistic_app/routes/undefined_screen.dart';
import 'package:artistic_app/screen/class_detail.dart';
import 'package:artistic_app/screen/entry_point.dart';
import 'package:artistic_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  String? routeName = settings.name;
  Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;

  switch (routeName) {
    case RouteName.loginScreen:
      return MaterialPageRoute<Widget>(builder: (_) => const LoginScreen());
    case RouteName.enrtyPoint:
      return MaterialPageRoute<Widget>(builder: (_) => const EntryPoint());
    case RouteName.classDetail:
      return MaterialPageRoute<Widget>(
          builder: (_) => ClassDetailScreen(
                classModel: args?['classModel'] as ClassModel,
              ));
    default:
      return MaterialPageRoute(builder: (_) => const UndefinedPage());
  }
}
