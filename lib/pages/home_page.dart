
import 'package:aniron/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

import 'dart:ui';
import '../theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody(){
    return Scaffold(
      appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Dashboard',
              style: TextStyle(color: ThemeColor.dark),
            ),
            actions: <Widget>[
              RawMaterialButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, '/notification');
                                                },
                                                shape: CircleBorder(),
                                                child: Icon(
                                                  Icons.notifications,
                                                  size: 22,
                                                  color: black,
                                                ),)

            ],
      ),
      body: getHomeCard(context),
    );
  }

  Widget getHomeCard(context){
    return 
    Container(
      color: white,
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height
      child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GridView.count(
                crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 15.0,
                  shrinkWrap: true,
                children: <Widget>[
                  HomeCard(title: "New Orders", icon: LineIcons.cart_plus, color: Color(0xFF69d3a7),),
                  HomeCard(title: "Top Products", icon: LineIcons.gift, color: Color(0xFF8a64df)),
                  HomeCard(title: "Customers", icon: LineIcons.group, color: Color(0xFFee6953)),
                  HomeCard(title: "Delivery", icon: LineIcons.truck, color: Color(0xFFfec52e)),
                  HomeCard(title: "Sales", icon: LineIcons.dollar, color: Color(0xFF6779e3)),
                  HomeCard(title: "Profit", icon: LineIcons.money, color: Color(0xFFf13569)),
                ],
              ),
              
            ]
          )
    );
  }

}
