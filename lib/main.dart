import 'package:catelog/pages/ToDoList/homePageToDo.dart';
import 'package:catelog/pages/cookbook/basic_screen.dart';
import 'package:catelog/pages/cookbook/immutable_widget.dart';
import 'package:catelog/pages/home_page.dart';
import 'package:catelog/pages/login.dart';
import 'package:catelog/pages/login_project/loginPage.dart';
import 'package:catelog/pages/login_project/welcomePage.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyApp(),
      // routes: {
      //   '/': (context) => HomePage(),
      //   MyRoutes.homePage: (context) => HomePage(),
      //   MyRoutes.loginPage: (context) => LoginPage(),
      // },
    );
  }
}
