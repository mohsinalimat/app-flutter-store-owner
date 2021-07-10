import 'package:aniron/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final String defaultFontFamily = 'Roboto-Light.ttf';

  final double defaultFontSize = 14;

  final double defaultIconSize = 17;

  bool termConditionAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthFormWidget(
        formWidget: ListView(
          children: <Widget>[
            TextField(
              obscureText: false,
              showCursor: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeColor.main),
                ),
                labelText: 'First Name *',
                prefixIcon: Icon(
                  Icons.person,
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
              obscureText: false,
              showCursor: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeColor.main),
                ),
                labelText: 'Last Name *',
                prefixIcon: Icon(
                  Icons.person,
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
              obscureText: false,
              showCursor: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ThemeColor.main),
                ),
                labelText: 'Phone Number *',
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
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Checkbox(
                      value: termConditionAccepted,
                      onChanged: (v) {
                        setState(() {
                          termConditionAccepted = v;
                        });
                      }),
                  Text(
                    "I Accept Term and Condition",
                    style: TextStyle(
                      color: ThemeColor.main,
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
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
                  "Sign Up",
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
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: Container(
                  height: 20,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            'assets/facebook.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign Up With Facebook",
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
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(35.0),
                    side: BorderSide(color: ThemeColor.main)),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
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
                          "Already have an account? ",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            {Navigator.pushReplacementNamed(context, '/login')},
                        child: Container(
                          child: Text(
                            "Sign In",
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
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
