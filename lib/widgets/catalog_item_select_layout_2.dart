import 'package:flutter/material.dart';
import '../theme/colors.dart';

import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'dart:ui';

class CatalogItemSelectLayout2Widget extends StatefulWidget {
  final bool enableTotal;
  final String title;
  final String info;
  int value;
  int sizeValue = 1;
  bool caputinoSwitchvalue = true;
  CatalogItemSelectLayout2Widget(
      {this.enableTotal, this.title = '', this.value = 1, this.info = ''});

  @override
  _CatalogItemSelectLayout2WidgetState createState() =>
      _CatalogItemSelectLayout2WidgetState();
}

class _CatalogItemSelectLayout2WidgetState
    extends State<CatalogItemSelectLayout2Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 5,
          color: ThemeColor.darktransparent,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 20,
          color: Colors.white,
        ),
        Container(
          color: ThemeColor.darktransparent,
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ThemeColor.main,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Icon(
                        Icons.data_usage,
                        color: Colors.white,
                      )),
                  title: Text(widget.title),
                  trailing: CupertinoSwitch(
                    value: widget.caputinoSwitchvalue,
                    onChanged: (bool value) {
                      setState(() {
                        widget.caputinoSwitchvalue = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 20,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(widget.info),
            )),
        Row(
          children: [
            for (var i = 0; i < 5; i++)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        //                   <--- left side
                        color: ThemeColor.darktransparent,
                        width: 1.0,
                      ),
                      right: BorderSide(
                        //                   <--- left side
                        color: ThemeColor.darktransparent,
                        width: 1.0,
                      ),
                      top: BorderSide(
                        //                   <--- left side
                        color: ThemeColor.darktransparent,
                        width: 1.0,
                      ),
                      bottom: widget.sizeValue == i
                          ? BorderSide(
                              //                   <--- left side
                              color: ThemeColor.orange,
                              width: 2.0,
                            )
                          : BorderSide(
                              //                   <--- left side
                              color: ThemeColor.darktransparent,
                              width: 2.0,
                            ),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.sizeValue = i;
                      });
                    },
                    customBorder: Border.all(
                        color: ThemeColor.dark, //
                        width: 10,
                        style: BorderStyle.solid),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('23'),
                    )),
                  ),
                ),
              )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(alignment: Alignment.centerLeft, child: Text('Color')),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/donut.jpg',
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    width: 10,
                  ),
                  Text('Red')
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (widget.value > 0) widget.value--;
                    },
                    child: Icon(
                      Icons.remove_circle,
                      color: ThemeColor.red,
                    ),
                  ),
                  Container(
                    width: 10,
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      selectionHeightStyle:
                          BoxHeightStyle.includeLineSpacingBottom,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: ThemeColor.darktransparent)),
                        focusedBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: ThemeColor.darktransparent)),
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: ThemeColor.darktransparent)),
                      ),
                      scrollPadding: EdgeInsets.all(0),
                      onTap: () {},
                      controller: new TextEditingController(
                          text: widget.value.toString()),
                    ),
                  ),
                  Container(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.value++;
                      });
                    },
                    child: Icon(
                      Icons.add_circle,
                      color: ThemeColor.lightgreen,
                    ),
                  )
                ],
              ))
            ],
          ),
        )
      ],
    );
  }
}
