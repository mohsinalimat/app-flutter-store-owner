import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aniron/theme/colors.dart';
import '../widgets/product_table.dart';

class ProductManagement extends StatefulWidget {
  @override
  _ProductManagementState createState() => _ProductManagementState();
}

class _ProductManagementState extends State<ProductManagement> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text(
      'Published',
      style: TextStyle(fontSize: 8),
    ),
    1: Text(
      'Unpublished',
      style: TextStyle(fontSize: 8),
    )
  };

  int recentVal = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: CupertinoSlidingSegmentedControl<int>(
            children: logoWidgets,
            onValueChanged: (int newValue) {
              setState(() {
                recentVal = newValue;
              });
            },
            groupValue: recentVal,
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Container(
              child: InkWell(
                onTap: () {},
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 60,
                      height: 27,
                      padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 1.0, color: ThemeColor.main),
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Show",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: ThemeColor.main),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.date_range,
                            size: 16,
                            color: ThemeColor.main,
                          ),
                        ],
                      ),
                    )),
              ),
            )),
      ],
    );
  }
}
