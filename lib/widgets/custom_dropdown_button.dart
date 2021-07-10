import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'dart:core';

class CustomDropdownButton extends StatelessWidget {
  final String dropdownValue;
  CustomDropdownButton({this.dropdownValue = 'One'});
  static const String _title = 'Flutter Code Sample';

  double getDrawerWidth(context){
return MediaQuery.of(context).size.width * 0.75;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: ThemeColor.darktransparent,
      child: Row(
        children: <Widget>[
          Container(
              width:  getDrawerWidth(context) / 3,
              child: Text('d')),
          Container(
            width: (  getDrawerWidth(context)/ 3 * 2),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                // setState(() {
                //   dropdownValue = newValue;
                // });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
