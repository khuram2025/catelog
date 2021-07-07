import 'package:catelog/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog"
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "HomePage"
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, MyRoutes.loginPage);
          }, child: Text('Back'))
        ],
      ),
      drawer: Drawer(

      ),

    );
  }
}
