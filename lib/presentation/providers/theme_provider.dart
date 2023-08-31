


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple bool
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);


// Un objeto de tipo Apptheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);


// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  // state = new AppTheme();
  ThemeNotifier(): super( AppTheme() );


  void toggleDarkMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColorIndex( int colorIndex ) {
    state = state.copyWith( selectedColor: colorIndex );
  }
  

}