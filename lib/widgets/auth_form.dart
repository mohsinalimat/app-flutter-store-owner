import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../util/constant.dart';

class AuthFormWidget extends StatelessWidget {
  final String defaultFontFamily = 'Roboto-Light.ttf';
  final double defaultFontSize = 14;
  final double defaultIconSize = 17;
  final Widget formWidget;
//  final Function formAction
  AuthFormWidget({this.formWidget = const Text('')});

  final bool isLoginForm = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: primary
            // image: DecorationImage(
            //   image: AssetImage("assets/images/login_image.jpg"),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      // Image.asset('assets/gradient_image.png'),
                      ClipRRect(
                        child: Container(
                            decoration: BoxDecoration(
                                // color: ThemeColor.main,
                                ),
                            child: Stack(
                              fit: StackFit.expand,
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  // child: Image.asset(
                                  //   'assets/icon.ico',
                                  //   width: 150,
                                  // )
                                  child: Text(
                                    APP_NAME,
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: Container(
                      child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                              left: 35, right: 35, top: 15, bottom: 35),
                          child: formWidget),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
