import 'package:flutter/material.dart';
import 'package:wotcher/theme/app_colors.dart';
import 'package:wotcher/widgets/auth/auth_screen.dart';
import 'package:wotcher/widgets/main/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.foreground),
          bodyMedium: TextStyle(color: AppColors.foreground),
          bodySmall: TextStyle(color: AppColors.foreground),
          titleLarge: TextStyle(color: AppColors.foreground),
          titleMedium: TextStyle(color: AppColors.foreground),
          titleSmall: TextStyle(color: AppColors.foreground),
          labelLarge: TextStyle(color: AppColors.foreground),
          labelMedium: TextStyle(color: AppColors.foreground),
          labelSmall: TextStyle(color: AppColors.foreground),
        ),
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.foreground,
          titleSpacing: 15,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.background,
          selectedItemColor: AppColors.foreground,
          unselectedItemColor: AppColors.foreground.withAlpha(120),
        ),
      ),
      routes: {'/auth': (_) => AuthScreen(), '/main': (_) => MainScreen()},
      initialRoute: '/main',
    );
  }
}
