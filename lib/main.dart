import 'package:flutter/material.dart';
import './theme/colors.dart';
import 'router.dart' as router;
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    onGenerateRoute: router.generateRoute,
    theme: ThemeData(
        fontFamily: 'NotoSans',
        accentColor: ThemeColor.main,
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white),
  ));
}
