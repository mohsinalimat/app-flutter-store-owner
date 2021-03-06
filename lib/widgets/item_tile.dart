import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ItemTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String cnt;
  final Function press;


  ItemTileWidget(
      {Key key,
      this.title = '',
      this.icon = LineIcons.calendar,
      this.cnt = '',
      this.color = Colors.red, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ThemeColor.grayline, width: 1))),
          child: ListTile(
            title: Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: this.color
                    ),
                    child: Icon(
                      this.icon,
                      size: 20,
                      color: white,
                    ),
                  ),
                
                SizedBox(
                  width: 10,
                ),
                Text(
                  this.title,
                ),

                (![null,"",0].contains(this.cnt)) ?
                Container(
                  
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.only(left:10,right:10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ThemeColor.lightblue
                        ),
                        child: Text(
                          this.cnt,
                          style:
                              TextStyle(color: white),
                        ),
                      ),
                    ),
                  ),
                  ) : Container()
                    
              ],
            ),
            trailing:
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),
            onTap: press
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 0,
            width: 10,
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 2))),
          ),
        )),
      ],
    );
  }
}


