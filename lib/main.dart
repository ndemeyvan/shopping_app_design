import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/routes/generated_route.dart';
import 'package:artistic_app/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: Constant.bebasNeueRegular,
            ),
            debugShowCheckedModeBanner: false,
            title: "Artistic app",
            initialRoute: RouteName.loginScreen,
            onGenerateRoute: generateRoute,
          );
        });
  }
}
