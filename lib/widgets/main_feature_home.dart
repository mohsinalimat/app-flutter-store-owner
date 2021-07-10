import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainFeature extends StatelessWidget {
  double width, height = 42;
  double customFontSize = 14;
  String defaultFontFamily = 'Roboto-Light.ttf';
  List<String> listItem = [
    'New Order',
    'Accepted',
    'Packaged',
    'Delivery',
    'Profit',
    'Top Prducts',
    'Customer',
    'Debt'
  ];
  Widget getlist(context, title, item , numColor) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              new Positioned(
                left: 60.0,
                top: 2.0,
                child: ([null,'',0].contains(numColor)) ? 
                 Container()
                 :
                 Container(
                  decoration: BoxDecoration(
                      color: numColor,
                      // shape: boxshape,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Text(
                    '200',
                    style: TextStyle(fontSize: 10,color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: width,
                height: height,
                margin: EdgeInsets.only(left:5),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    
                    item,
                    color: ThemeColor.main,
                    size: 35,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: 38, bottom: 10),
                child: Center(
                  child: Text(
                    "$title",
                    style: TextStyle(
                        color: ThemeColor.main,
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: customFontSize),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getlist(context, 'New Order', LineIcons.cart_arrow_down, Colors.red),
              getlist(context, 'Accepted', LineIcons.cart_plus, Colors.blue),
              getlist(context, 'Packaged', LineIcons.cube, Colors.deepOrange),
              getlist(context, 'Delivery', LineIcons.truck, Colors.green),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getlist(context, 'Profit', LineIcons.dollar, null),
              getlist(context, 'Top Products', LineIcons.cart_plus, null),
              getlist(context, 'Customers', LineIcons.users, null),
              getlist(context, 'Debt', LineIcons.money, null),
            ],
          ),
        ],
      )
    );
  }
}
