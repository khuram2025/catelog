import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage02 extends StatefulWidget {

  @override
  _HomePage02State createState() => _HomePage02State();
}

class _HomePage02State extends State<HomePage02> {

  double _numberForm;
  String _startMeasure;

  @override
  Widget build(BuildContext context) {
    final List<String> _measures = [
      'meters',
      'kilometers',
      'grams',
      'kilograms',
      'feet',
      'miles',
      'pounds (lbs)',
      'ounces',
    ];
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Spacer(),
            Text(
              "Value",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.grey
              ),
            ),
            Spacer(),
            TextField(
              decoration:InputDecoration(
                hintText: "Please insert the measure number to be .... "
              ),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
              onChanged: (text){
                var rv = double.tryParse(text);
                setState(() {
                  _numberForm = rv;
                });
              },
            ),
            Spacer(),
            Text(
              "From",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey
              ),
            ),
            Spacer(),
            DropdownButton(
              isExpanded: true,
                items: _measures.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                      child: Text(value));
                }).toList(),
              onChanged: (value){
                setState(() {
                  _startMeasure = value;
                });
              },
              value: _startMeasure,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
