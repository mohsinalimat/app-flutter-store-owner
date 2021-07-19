
import 'package:flutter/material.dart';

import 'dart:core';

class TextFormDropdown extends StatefulWidget {
  @override
  _TextFormDropdownState createState() => _TextFormDropdownState();
}

class _TextFormDropdownState extends State<TextFormDropdown> {
  final List<String> _currencies = [
    "Today",
    "Yesterday",
    "Last 7 days",
    "This week",
    "This month",
    "This year",
  ];

  String _currentSelectedValue = "Today";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: EdgeInsets.only(bottom: 10),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            // baseStyle:
            //     TextStyle(fontSize: 10.0, height: 0.1, color: Colors.black),
            decoration: InputDecoration(
                fillColor: Colors.orange,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                labelStyle: TextStyle(height: 0.1, fontSize: 10),
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10.0),
                hintText: 'Please select expense',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0))),
            isEmpty: _currentSelectedValue == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                iconSize: 12,
                style:
                    TextStyle(fontSize: 12.0, height: 0.1, color: Colors.black),
                value: _currentSelectedValue,
                isDense: true,
                itemHeight: 100,
                icon: Positioned(
                  top: 0,
                  child: Container(child: Icon(Icons.calendar_today))),
                onChanged: (String newValue) {
                  setState(() {
                    _currentSelectedValue = newValue;
                    state.didChange(newValue);
                  });
                },
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
