import 'package:flutter/material.dart';
// import 'package:testt/theme/color.dart';
import 'package:flutter/cupertino.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      //finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: callDatePicker,
      color: Colors.blueAccent,
      child: new Text('Click here', style: TextStyle(color: Colors.white)),
    );
  }
}
