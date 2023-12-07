
import 'package:flutter/material.dart';
import 'package:shopping_app/data/product_item_model.dart';
import 'package:shopping_app/routes/route_name.dart';
import 'package:shopping_app/routes/undefined_screen.dart';
import 'package:shopping_app/screen/detail_screen.dart';
import 'package:shopping_app/screen/home_screen.dart';
import 'package:shopping_app/screen/presentation_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  String? routeName = settings.name;
  Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;

  switch (routeName) {
    case RouteName.presentationScreen:
      return MaterialPageRoute<Widget>(
          builder: (_) => const PresentationScreen());
    case RouteName.homeScreen:
      return MaterialPageRoute<Widget>(builder: (_) => const HomeScreen());
    case RouteName.detailScreen:
      var args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute<Widget>(
          builder: (_) => DetailScreen(
                productTiemModel: args['productTiemModel'] as ProductTiemModel,
              ));
    default:
      return MaterialPageRoute(builder: (_) => const UndefinedPage());
  }
}
