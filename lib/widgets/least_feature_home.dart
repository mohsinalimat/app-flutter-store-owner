import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeastFeature extends StatelessWidget {
  double width = 39;
  double height = 39;
  double iconFont = 25;
  double customFontSize = 11;
  String defaultFontFamily = 'Roboto-Light.ttf';

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: ThemeColor.light,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        // shape: boxshape,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFF2F3F7)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(
                                                      context, '/report');
                      },
                      shape: CircleBorder(),
                      child: Icon(
                        LineIcons.file_text,
                        size: iconFont,
                        color: ThemeColor.main,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Report",
                    style: TextStyle(
                        color: ThemeColor.light,
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: customFontSize),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        // shape: boxshape,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFF2F3F7)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/marketing');
                      },
                      shape: CircleBorder(),
                      child: Icon(
                        LineIcons.bullhorn,
                        size: iconFont,
                        color: ThemeColor.main,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Marketing",
                    style: TextStyle(
                        color: ThemeColor.light,
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: customFontSize),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        // shape: boxshape,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFF2F3F7)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(
                                                      context, '/financial');
                      },
                      shape: CircleBorder(),
                      child: Icon(
                        LineIcons.university,
                        size: iconFont,
                        color: ThemeColor.main,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Financial",
                    style: TextStyle(
                        color: ThemeColor.light,
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: customFontSize),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        // shape: boxshape,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFF2F3F7)),
                    child: RawMaterialButton(
                      onPressed: () {
                         Navigator.pushNamed(
                                                      context, '/spn');
                      },
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.people_outline,
                        size: iconFont,
                        color: ThemeColor.main,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "SPN",
                    style: TextStyle(
                        color: ThemeColor.light,
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: customFontSize),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
