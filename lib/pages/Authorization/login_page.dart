import 'package:aniron/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String defaultFontFamily = 'Roboto-Light.ttf';
  final double defaultFontSize = 14;
  final double defaultIconSize = 17;
  bool pinSecure = true;
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthFormWidget(
      formWidget: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width - 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  showCursor: true,
                  decoration: InputDecoration(
                    labelText: 'Phone Number *',
                    hintText: 'Phone Number *',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor.main),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  maxLength: 6,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.number,
                  obscureText: pinSecure,
                  showCursor: true,
                  decoration: InputDecoration(
                    labelText: 'Pin *',
                    hintText: 'Pin *',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor.main),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          pinSecure = !pinSecure;
                        });
                      },
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                    ),
                    fillColor: Color(0xFFF2F3F5),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  width: double.infinity,
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: ThemeColor.main,
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    padding: EdgeInsets.all(17.0),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false,
                          arguments: 0);
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: ThemeColor.main,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(35.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    padding: EdgeInsets.all(17.0),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false,
                          arguments: 0);
                    },
                    child: Container(
                      height: 20,
                      // width: 300,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              'assets/facebook.jpg',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sign In Vai Facebook",
                            style: TextStyle(
                              color: ThemeColor.main,
                              fontSize: 18,
                              fontFamily: 'Poppins-Medium.ttf',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(35.0),
                        side: BorderSide(color: ThemeColor.main)),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                ),

                //
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width - 70,
            child: Align(
              child: Column(
                children: <Widget>[
                  //
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "New User? ",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/signup', (Route<dynamic> route) => false,
                                arguments: 0)
                          },
                          child: Container(
                            child: Text(
                              "Create An Account",
                              style: TextStyle(
                                color: ThemeColor.main,
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
