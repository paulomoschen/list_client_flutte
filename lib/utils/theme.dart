import 'package:flutter/material.dart';

class ClientTheme {
  static ThemeData mainTheme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    ),

    scaffoldBackgroundColor: const Color.fromARGB(223, 245, 245, 245),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xFF64B5F6),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),

    listTileTheme: const ListTileThemeData(
      textColor: Color(0xFF212121),
      iconColor: Color(0xFF757575),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF64B5F6),
      foregroundColor: Colors.black,
    ),

    dividerColor: const Color(0xFFBDBDBD),

    timePickerTheme: TimePickerThemeData(
      backgroundColor: Colors.white,
      dialBackgroundColor: const Color(0xFF64B5F6),
      dialHandColor: Colors.white,
      hourMinuteColor: Colors.white,
      hourMinuteTextColor: Colors.black,
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      cancelButtonStyle: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.black),
      ),
      confirmButtonStyle: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: Colors.blue, fontSize: 16.0),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.blue),
      ),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        color: Colors.black,
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(fontSize: 18),
      hintStyle: TextStyle(fontSize: 18.0),
      alignLabelWithHint: true,
    ),
  );
}
