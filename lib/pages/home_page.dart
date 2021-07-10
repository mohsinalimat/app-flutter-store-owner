import 'package:aniron/util/constant.dart';
import 'package:aniron/widgets/bar_chart.dart';
import 'package:aniron/widgets/main_feature_home.dart';
import 'package:flutter/material.dart';
import 'package:aniron/widgets/least_feature_home.dart';
import 'package:aniron/theme/colors.dart';


import 'dart:ui';

import '../util/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ThemeColor.main,
        child: SafeArea(
            child: Column(children: <Widget>[
          ClipRRect(
            child: Container(
                height: 60,
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                        top: 8,
                        left: 0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(horizontal: 19),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      APP_NAME,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto-Light.ttf',
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  10, 0, 10, 0),
                                              width: 28,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      ThemeColor.transparent),
                                              child: RawMaterialButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, '/notification');
                                                },
                                                shape: CircleBorder(),
                                                child: Icon(
                                                  Icons.notifications,
                                                  size: 22,
                                                  color: ThemeColor.light,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 26,
                                              height: 26,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ThemeColor.red,
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  image: DecorationImage(
                                                      image: NetworkImage(userProfile),
                                                      fit: BoxFit.cover)),
                                              child: RawMaterialButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(context, '/login');
                                                },
                                                shape: CircleBorder(),
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ],
                            )))
                  ],
                )),
          ),
          LeastFeature(),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    MainFeature(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        // color: ThemeColor.light,
                        height: MediaQuery.of(context).size.height / 2 - 50,
                        child: Stack(
                          children: <Widget>[
                            Container(
                                height:
                                    MediaQuery.of(context).size.height / 2 - 50,
                                child: BarChartSample2()),
                            // Container(
                            //   width: 250,
                            //   height: 200,
                            //   child: CustomPaint(
                            //     painter: ArrowPainter(),
                            //   ),
                            // )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
