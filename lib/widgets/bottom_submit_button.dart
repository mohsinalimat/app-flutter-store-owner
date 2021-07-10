import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'dart:core';

class BottomSubmitButtonWidget extends StatelessWidget {
  final String firstButtonTitle;
  final String secondButtonTitle;
  final double buttonWidth;
  final Color firstButtonBackgroundColor;
  final Color backgroundColor;
  BottomSubmitButtonWidget(
      {this.firstButtonTitle = '',
      this.buttonWidth = 50,
      this.backgroundColor = ThemeColor.maintransparent,
      this.secondButtonTitle = '',
      this.firstButtonBackgroundColor = ThemeColor.main});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColor.bluetransparent,
        border: Border(
          top: BorderSide(width: 1, color: backgroundColor),
        ),
      ),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              color: firstButtonBackgroundColor,
              onPressed: () {
                // getImageFromGallery();
              },
              child: Container(
                 width: buttonWidth,
                  // width: (MediaQuery.of(context).size.width / 2) - 60,
                  height: 20,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        firstButtonTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              color: ThemeColor.main,
              onPressed: () {
                // getImageFromCamera();
              },
              child: Container(
                width: buttonWidth,
                  // width: (MediaQuery.of(context).size.width / 2) - 60,
                  height: 20,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        secondButtonTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
