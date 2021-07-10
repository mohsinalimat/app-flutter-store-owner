import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class IconSlideButtonRoundLineWidget extends StatelessWidget{

  final String buttonTitle;
  final IconData buttonIcon;
  final Color buttonColor;
  final VoidCallback onTap;

  IconSlideButtonRoundLineWidget({Key key, 
    this.buttonTitle, 
    this.buttonIcon , 
    this.buttonColor,
    this.onTap}) : super(key : key);

  @override
  Widget build(BuildContext context){

    return IconSlideAction(
      iconWidget: Container(
          child: Column(
        children: <Widget>[
          Container(

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1.0,
                    color: ThemeColor.grayline),
                shape: BoxShape.circle,
                // borderRadius:
                //     BorderRadius.circular(
                //         50),
                boxShadow: [
                  BoxShadow(
                    color: ThemeColor.grayline,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                buttonIcon,
                size: 20,
                color: buttonColor,
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 9),
          )
        ],
      )),
      onTap: onTap,
    );
  }
}