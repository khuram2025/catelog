import 'package:catelog/pages/best_ui_templates/contrast.dart';
import 'package:catelog/pages/best_ui_templates/componets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
            children: [
              Header(),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                      child: Container(
                    height: 500,
                    color: Colors.white,
                  )),
                  SizedBox(width: defaultPadding,),
                  Expanded(
                    flex: 2,
                      child: Container(
                    height: 500,
                    color: primaryColor,
                  ))
                ],
              )
            ]
        ),

      ),
    );
  }
}



