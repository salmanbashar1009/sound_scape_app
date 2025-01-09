import 'package:flutter/material.dart';

const Gradient gradientBg =  LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF42098F),
    Color(0xFFB53FFE),
  ],
);

class AppTheme {
  static ThemeData get light => ThemeData(
    primaryColor: const Color(0xFF6B4EFF),
    scaffoldBackgroundColor: const Color(0xFF09001F),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.all(16.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none
      ),
    ),
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0x09001F), // Set the background color
      selectedItemColor: Colors.white,
      unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.4),
      selectedLabelStyle: TextStyle(color: Colors.white),
      selectedIconTheme: IconThemeData(
        color: Colors.purple,
      ),
    )
  );
}