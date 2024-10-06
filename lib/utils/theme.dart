import 'package:flutter/material.dart';

class ClientTheme {
  static ThemeData mainTheme = ThemeData(
    useMaterial3: true,

    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: const Color.fromARGB(223, 245, 245, 245),

    // Personalização do appBar
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xFF64B5F6),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),

    // Personalização do listTile
    listTileTheme: const ListTileThemeData(
      textColor: Color(0xFF212121),
      iconColor: Color(0xFF757575),
    ),

    // Personalização do floatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF64B5F6),
      foregroundColor: Colors.black,
    ),

    dividerColor: const Color(0xFFBDBDBD),

    // Personalização do TimePicker
    timePickerTheme: TimePickerThemeData(
      backgroundColor: Colors.white,
      dialBackgroundColor: const Color(0xFF64B5F6),
      dialHandColor: Colors.white,
      hourMinuteShape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xFF2196F3),
          width: 2.0,
        ),
      ),
      hourMinuteColor: Colors.white,
      hourMinuteTextColor: Colors.black,

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

    // Personalização do text
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        color: Colors.black,
      ),
    ),
  );
}
