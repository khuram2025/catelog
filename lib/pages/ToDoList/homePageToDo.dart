import 'package:flutter/material.dart';

class HomePageToDo extends StatefulWidget {
  @override
  _HomePageToDoState createState() => _HomePageToDoState();
}

class _HomePageToDoState extends State<HomePageToDo> {
  Widget _buildTask(int index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text("Task Title"),
            subtitle: Text("October, 2 2021 . High"),
            trailing: Checkbox(
              onChanged: (value){
                print(value);
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
            Icons.add
        ),),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 80),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){
          if (index == 0){
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("My Task", style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),),
                  Text(" 0 of 1 ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,

                    ),)
                ],
              ),
            );
          }
          return _buildTask(index);
        }, ),

    );
  }
}
