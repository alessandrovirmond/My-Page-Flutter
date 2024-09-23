import 'package:flutter/material.dart';
import 'package:my_page_flutter/src/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
   
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
         shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0), 
          ),
        ),
      ),
      title: "RFID Fácil",
      home: const HomePage(),
    ),
    );
}
