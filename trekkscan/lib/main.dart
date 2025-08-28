import 'package:flutter/material.dart';
import 'screens/auth/LoginScreen.dart';
import 'theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrekkScan',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: TrekkColors.primary,
        scaffoldBackgroundColor: TrekkColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: TrekkColors.primary,
          primary: TrekkColors.primary,
          secondary: TrekkColors.secondary,
          surface: TrekkColors.surface,
          background: TrekkColors.background,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: TrekkColors.textPrimary),
          bodyMedium: TextStyle(color: TrekkColors.textPrimary),
          titleLarge: TextStyle(color: TrekkColors.textPrimary),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: TrekkColors.formBackground,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: TrekkColors.formBorder),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: TrekkColors.formBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: TrekkColors.primary),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: TrekkColors.primary,
            foregroundColor: TrekkColors.background,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
