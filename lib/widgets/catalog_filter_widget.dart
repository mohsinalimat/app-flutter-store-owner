import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'dart:core';
import 'package:flutter/cupertino.dart';

class CatalogFilterWidget extends StatefulWidget {
  final String title;
  final Widget body;

  CatalogFilterWidget({this.title = '', this.body});

  @override
  _CatalogFilterWidgetState createState() => _CatalogFilterWidgetState();
}

class _CatalogFilterWidgetState extends State<CatalogFilterWidget> {
  bool caputinoSwitchValue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(child: Text(widget.title)),
                  InkWell(
                      onTap: () {
                        print('test');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Template',
                            style: TextStyle(color: ThemeColor.main),
                          ),
                          Container(width: 3),
                          Icon(
                            Icons.dashboard,
                            color: ThemeColor.main,
                          )
                        ],
                      )),
                  Text(' | '),
                  InkWell(
                      onTap: () {
                        print('test');
                      },
                      child: Row(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(color: ThemeColor.main),
                          ),
                          Container(width: 3),
                          Icon(
                            Icons.check_circle,
                            color: ThemeColor.main,
                          )
                        ],
                      )),
                  Text(' | '),
                  InkWell(
                      onTap: () {
                        print('test');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(color: ThemeColor.main),
                          ),
                          Container(width: 3),
                          Icon(
                            Icons.add_circle_outline,
                            color: ThemeColor.main,
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              child: widget.body,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  InkWell(
                      onTap: () {
                        print('test');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Create Template',
                          ),
                          Container(width: 3),
                          Icon(
                            Icons.dashboard,
                          ),
                          Container(width: 8),
                          CupertinoSwitch(
                            value: caputinoSwitchValue,
                            onChanged: (bool value) {
                              setState(() {
                                caputinoSwitchValue = value;
                              });
                            },
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
