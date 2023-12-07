part of 'theme_cubit.dart';

class ThemeState {
  bool isDarkTheme;
  ThemeState({this.isDarkTheme = false});
}

// This is the state of initial app
class ThemeInitial extends ThemeState {
  ThemeInitial({super.isDarkTheme});
}

// We will controll the theme of the app
class ThemeChanged extends ThemeState {
  ThemeChanged({super.isDarkTheme});
}
