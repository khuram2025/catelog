import 'package:catelog/pages/home_page.dart';
import 'package:catelog/pages/login.dart';
import 'package:catelog/utils/routes.dart';
import 'package:catelog/widgets/themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      // home: LoginPage(),
      routes: {
        '/': (context) => HomePage(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.loginPage: (context) => LoginPage(),
      },
    );
  }
}
