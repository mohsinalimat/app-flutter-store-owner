import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ProductGrandListWidget extends StatelessWidget {
  final double iconSize = 10;
  final double headerTableTextSize = 13;
  final double bodyTableTextSize = 12;
  List myData = [];
  ProductGrandListWidget({this.myData});
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Table(
            border: TableBorder(
              bottom: BorderSide(
                  width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
              right: BorderSide(
                  width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
              left: BorderSide(
                  width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
              horizontalInside: BorderSide(
                  width: 1, color: ThemeColor.grayline, style: BorderStyle.solid)),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            textBaseline: TextBaseline.alphabetic,
            children: [
              TableRow(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7)),
                      color: ThemeColor.main),
                  children: [
                    Container(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                          child: Text(
                            'Category',
                            style: TextStyle(
                                fontSize: headerTableTextSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Text(
                            'Products',
                            style: TextStyle(
                                fontSize: headerTableTextSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Text(
                            'Quantity',
                            style: TextStyle(
                                fontSize: headerTableTextSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                          child: Text(
                            'Amount',
                            style: TextStyle(
                                fontSize: headerTableTextSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                  ]),
              for (var i = 0; i < myData.length; i++)
                TableRow(
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        // color: Colors.white
                        ),
                    children: [
                      Container(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            child: Text(
                              myData[i],
                              style: TextStyle(fontSize: bodyTableTextSize),
                            )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              width: 39,
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: bodyTableTextSize, color: Colors.white),
                              ),
                            )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              width: 39,
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: bodyTableTextSize, color: Colors.white),
                              ),
                            )),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text(
                              '4,000.00 R',
                              style: TextStyle(fontSize: bodyTableTextSize),
                            )),
                      ),
                    ]),
            ],
          ),
        ),
      ),
    );
  }
}
