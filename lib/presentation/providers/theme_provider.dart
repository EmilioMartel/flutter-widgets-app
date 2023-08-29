


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple bool
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);
