
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(isDarkTheme: false));

  void changeTheme() {
    emit(ThemeChanged(isDarkTheme: !state.isDarkTheme));
  }
}
