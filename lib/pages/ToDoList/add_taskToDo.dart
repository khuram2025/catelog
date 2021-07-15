import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _priority;
  DateTime _date = DateTime.now();

  TextEditingController _dateController = TextEditingController();

  final DateFormat _dateFormatter = DateFormat("MMM dd, yyyy");

  _handDatePicker() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100))
    ;
    if (date!= null && date != _date) {
      setState(() {
        _date = date;
      });
      _dateController.text = _dateFormatter.format(date);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),

          ),
          SizedBox(height: 20,),
          Text(
            "Add Task", style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.0),
            child: Form(
              key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        labelText: "Title",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (input) =>
                      input.trim().isEmpty ? "Please enter a task title": null,
                      onSaved: (input) => _title = input,
                      initialValue: _title,
                    )
                  ],
                )
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.0),
            child: Form(

                child: TextFormField(
                  controller: _dateController,
                  style: TextStyle(fontSize: 18.0),
                  onTap: _handDatePicker,
                  decoration: InputDecoration(
                    labelText: "Date",
                    labelStyle: (
                    TextStyle(fontSize: 18.0,)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  ),

            )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Form(
                child: TextFormField(
                  style: TextStyle(fontSize: 18.0),
                  decoration:InputDecoration(
                    labelText: "Date",
                    labelStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                  validator: (input) => input.trim().isEmpty ? "Please Enter the Date": null,
                  onSaved: (input) => _title = input,
                  initialValue: _title,

                )),
          ),

        ],
      ),

    );
  }
}