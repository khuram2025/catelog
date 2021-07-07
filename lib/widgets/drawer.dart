import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Khan Ji"),
                accountEmail: Text("khan@gmial.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home Page", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("My Profile", style: TextStyle(
                color: Colors.white,
              ), textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail, color: Colors.white,
              ),
              title: Text("Email Me", style: TextStyle(color: Colors.white),
              textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}
