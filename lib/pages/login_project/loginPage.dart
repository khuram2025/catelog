import 'package:catelog/widgets/bezierContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage01 extends StatefulWidget {

  @override
  _LoginPage01State createState() => _LoginPage01State();
}

class _LoginPage01State extends State<LoginPage01> {

  Widget _entryField(String title, {bool isPassword = false }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            title, style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15
          ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true
            ),
          )
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(2, 4),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xfffbb448), Color(0xfff7892b)]),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          fontSize: 20, color: Colors.white
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: [
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }
  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'd',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'ev',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'rnz',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: -height * .15,
                right: -MediaQuery.of(context).size.width*.4,
                child: BezierContainer()),
            Container(padding: EdgeInsets.symmetric(horizontal: 20 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * .2),

                  _title(),
                  SizedBox(height: 50,),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),

                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
