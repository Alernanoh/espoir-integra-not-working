import 'package:flutter/material.dart';

const colorEspoirAzul = Color.fromRGBO(10, 87, 157, 1);
const colorEspoirAmarrillo = Color.fromRGBO(243, 187, 25, 1);
const colorEspoirPlomo = Color.fromRGBO(230, 230, 230, 1);

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: false,
      colorSchemeSeed: colorEspoirAzul,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: colorEspoirAzul,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colorEspoirAzul,
        elevation: 10,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
      ),
      tabBarTheme: const TabBarTheme(
        dividerHeight: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: colorEspoirAmarrillo,
            backgroundColor: Colors.white),
      ));
}
