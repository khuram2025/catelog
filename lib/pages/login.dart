import 'package:catelog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool pressButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,),
          Text("Welcome $name", style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "Username"
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () async {
                    setState(() {
                      pressButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homePage);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: pressButton? 50: 120,

                    child: pressButton?Icon(Icons.done, color: Colors.white,):Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                )
                // ElevatedButton(onPressed: (){
                //   Navigator.pushNamed(context, MyRoutes.homePage);
                // }, child: Text(
                //   "Login"
                // ))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
