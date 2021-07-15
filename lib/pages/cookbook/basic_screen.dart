import 'package:catelog/pages/cookbook/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Welcome to Flutter"),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
          child: Icon(Icons.edit),)
        ],
      ),
      body: Center(

        child: AspectRatio
          (
          aspectRatio:1.0,
            child: ImmutableWidget()
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
            child: Center(
              child: Text(
                "I am drawer"
          ),
            ),
        ),
      ),
    );
  }
}
