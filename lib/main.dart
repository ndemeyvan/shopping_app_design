import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/routes/generated_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/route_name.dart';
import 'theme/logic/theme_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (coontext) => ThemeCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
                darkTheme: ThemeData(
                  fontFamily: Constant.criteriaCfRegular400,
                  colorScheme: ThemeData.light().colorScheme.copyWith(
                        primary: const Color(0xFFfcfcfc),
                        secondary: const Color(0xFF8b8b8b),
                        tertiary: const Color(0xFFfcfcfc),
                        onTertiary: const Color(0xFF0b0b0b),
                      ),
                ),
                theme: ThemeData(
                  fontFamily: Constant.criteriaCfRegular400,
                  colorScheme: ThemeData.light().colorScheme.copyWith(
                        primary: const Color(0xFF0b0b0b),
                        secondary: const Color(0xFF8b8b8b),
                        tertiary: const Color(0xFFfcfcfc),
                        onTertiary: const Color(0xFFfcfcfc),
                      ),
                ),
                debugShowCheckedModeBanner: false,
                title: "Shopping app",
                initialRoute: RouteName.presentationScreen,
                onGenerateRoute: generateRoute,
              );
            },
          );
        });
  }
}
