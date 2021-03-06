import 'package:flutter/material.dart';

class MyTheme {
   static ThemeData  lightTheme(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
          centerTitle: true
      )
  );
}