import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
// import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MarketingPage extends StatefulWidget {
  @override
  _MarketingPageState createState() => _MarketingPageState();
}

class _MarketingPageState extends State<MarketingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTopWidget(appBarTitle:'Marketing'),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ThemeColor.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.flash_on,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Flash Deal Promotion'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 0.2,
              )),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ThemeColor.lightblue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                LineIcons.hand_spock_o,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Bargain Discount'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 0.2,
              )),
          ListTile(
            leading: Stack(
              overflow: Overflow.visible,
              // alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: ThemeColor.lightgreen,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(5.0),
                  child: Transform.rotate(
                    angle: 270 * 3.14 / 180,
                    child: Icon(
                      LineIcons.space_shuttle,
                      size: 28,
                      color: ThemeColor.light,
                    ),
                  ),
                ),
                Positioned(
                  top: -8,
                  right: -8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ThemeColor.red,
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.all(2),
                    child: Text('Soon',
                        style: TextStyle(fontSize: 9, color: Colors.white)),
                  ),
                )
              ],
            ),
            title: Text('Boost Sale'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 0.2,
              )),
        ],
      ),
    );
  }
}
