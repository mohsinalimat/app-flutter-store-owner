import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
// import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SPNPage extends StatefulWidget {
  @override
  _SPNPageState createState() => _SPNPageState();
}

class _SPNPageState extends State<SPNPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTopWidget(
        appBarTitle: 'SPN',
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ThemeColor.lightblue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.star_border,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Mapping SPN'),
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
                  color: ThemeColor.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.attach_money,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('SPN Structure'),
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
                  color: ThemeColor.lightgreen,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.equalizer,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('SPN Revenue'),
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
