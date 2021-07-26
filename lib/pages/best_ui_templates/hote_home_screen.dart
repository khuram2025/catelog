import 'dart:ui';
import 'package:catelog/pages/best_ui_templates/componets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard/dashboard_screen.dart';

class HotelHomeScreen extends StatefulWidget {

  @override
  _HotelHomeScreenState createState() => _HotelHomeScreenState();
}

class _HotelHomeScreenState extends State<HotelHomeScreen> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
                child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}


class DrawerListTile extends StatelessWidget {
  const DrawerListTile({

    Key key, @required this.title, @required this.svgSrc, @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc,
      color: Colors.white54,
      height: 16,),
      title: Text(title, style: TextStyle(color: Colors.white54),),
    );
  }
}
