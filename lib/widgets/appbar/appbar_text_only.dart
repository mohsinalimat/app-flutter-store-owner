import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';

class AppBarTextOnly extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  final bool haveRightButton;
  AppBarTextOnly({this.appBarTitle, this.haveRightButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      textTheme: TextTheme(),
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 17),
      ),
      centerTitle: true,
      leading: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 18,
              left: 15,
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 13, color: ThemeColor.main),
              ),
            ),
            Positioned(
              left: 15,
              top: 5,
              child: Container(
                width: 60,
                child: IconButton(
                  alignment: Alignment.centerLeft,
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    size: 0,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        this.haveRightButton
            ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Done',
                  style: TextStyle(fontSize: 13, color: ThemeColor.main),
                ),
              )
            : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
