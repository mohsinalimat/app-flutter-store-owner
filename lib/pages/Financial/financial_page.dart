import 'package:aniron/theme/colors.dart';
// import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import '../../widgets/appbar_top.dart';
import 'package:line_icons/line_icons.dart';

class FinancialPage extends StatefulWidget {
  @override
  _FinancialPageState createState() => _FinancialPageState();
}

class _FinancialPageState extends State<FinancialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTopWidget(appBarTitle: 'Financial'),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ThemeColor.lightblue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.attach_money,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Transaction Payment'),
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
