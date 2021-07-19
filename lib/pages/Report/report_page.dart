import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTopWidget(appBarTitle: 'Report'),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ThemeColor.lightblue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.description,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Sale Reports'),
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
                  color: ThemeColor.darkblue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.library_books,
                size: 28,
                color: ThemeColor.light,
              ),
            ),
            title: Text('Product Performance Reports'),
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
                      Icons.library_books,
                      size: 28,
                      color: ThemeColor.light,
                    ),
                  ),
                ),
                // Positioned(
                //   top: -8,
                //   right: -8,
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: ThemeColor.red,
                //         borderRadius: BorderRadius.circular(5)),
                //     padding: EdgeInsets.all(2),
                //     child: Text('Soon',
                //         style: TextStyle(fontSize: 9, color: Colors.white)),
                //   ),
                // )
              ],
            ),
            title: Text('Customer Performance Reports'),
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
                      color: ThemeColor.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(5.0),
                  child: Transform.rotate(
                    angle: 270 * 3.14 / 180,
                    child: Icon(
                      Icons.library_books,
                      size: 28,
                      color: ThemeColor.light,
                    ),
                  ),
                ),
              ],
            ),
            title: Text('Dept Reports'),
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
