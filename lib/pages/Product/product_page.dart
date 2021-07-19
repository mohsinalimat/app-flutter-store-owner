import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';
import '../../theme/colors.dart';
import 'product_grand_page.dart';
import 'product_list_page.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Published',style: TextStyle(fontSize: 13),),
    1: Text('Unpublished',style: TextStyle(fontSize: 13),)
  };
  int recentVal = 0;
  int _selectedIndex = 0;
  List<Widget> productPages = <Widget>[ProductGrand(), ProductList()];
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Products',
              style: TextStyle(color: ThemeColor.dark),
            ),
            // backgroundColor: ThemeColor.light,
            actions: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 8),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ThemeColor.darktransparent),
                        child: RawMaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.search,
                            size: 20,
                            color: ThemeColor.dark,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 10, 10, 8),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ThemeColor.darktransparent),
                        child: RawMaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.format_list_numbered,
                            size: 20,
                            color: ThemeColor.dark,
                          ),
                        ),
                      ),
                    ],
                  )),
            ]),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 15),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: CupertinoSlidingSegmentedControl<int>(
                        padding: EdgeInsets.only(left:0,right:0),
                        children: widget.logoWidgets,
                        onValueChanged: (int newValue) {
                          setState(() {
                            widget.recentVal = newValue;
                          });
                        },
                        groupValue: widget.recentVal,
                      ),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                switch (widget._selectedIndex) {
                                  case 1:
                                    widget._selectedIndex = 0;
                                    break;
                                  case 0:
                                    widget._selectedIndex = 1;
                                    break;
                                  default:
                                }
                                setState(() {});
                              },
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1.0, color: ThemeColor.main),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7.0))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Show",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: ThemeColor.main),
                                        ),
                                        SizedBox(width: 3),
                                        Icon(
                                          Icons.date_range,
                                          size: 17,
                                          color: ThemeColor.main,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  child: widget.productPages[widget._selectedIndex],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add, color: white,),
            onPressed: () {
              Navigator.pushNamed(context, '/add-product');
            }));
  }
}
