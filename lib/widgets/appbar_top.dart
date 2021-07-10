import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'dart:core';

class AppbarTopWidget extends StatelessWidget with PreferredSizeWidget {
  final bool twoActionButtons;
  final Widget firstButtonIcon;
  final Widget secondButtonIcon;
  final bool enableActionButton;
  final Function firstButtonAction;
  final Function secondButtonAction;
  final String appBarTitle;
  final bool showBackButton;
  final bool enableEndDrawer;
  final Widget endDrawerIcon;

  AppbarTopWidget(
      {this.appBarTitle = '',
     
      this.showBackButton = true,
      this.twoActionButtons = false,
      this.enableActionButton = false,
      this.firstButtonIcon = const Icon(Icons.ac_unit),
      this.secondButtonIcon = const Icon(Icons.ac_unit),
      this.firstButtonAction = null,
      this.endDrawerIcon = const Icon(Icons.list),
      this.enableEndDrawer = false,
      this.secondButtonAction = null});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      textTheme: TextTheme(),
      title: Text(
        appBarTitle,
        // /style: TextStyle(fontSize: 17),
      ),
      centerTitle: true,
      leading: showBackButton
          ? Container(
              width: 130,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 18,
                    left: 24,
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 5,
                    child: Container(
                      width: 60,
                      child: IconButton(
                        alignment: Alignment.centerLeft,
                        icon: new Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(),
      actions: <Widget>[
        enableActionButton == true
            ? Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 10, 10, 8),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.darktransparent),
                      child: RawMaterialButton(
                        onPressed: firstButtonAction != null
                            ? firstButtonAction
                            : () {},
                        shape: CircleBorder(),
                        child: firstButtonIcon,
                      ),
                    ),
                    twoActionButtons == true
                        ? Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 0, 8),
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ThemeColor.darktransparent),
                            child: RawMaterialButton(
                              onPressed: secondButtonAction != null
                                  ? secondButtonAction
                                  : () {},
                              shape: CircleBorder(),
                              child: secondButtonIcon,
                            ),
                          )
                        : Container(),
                  ],
                ))
            : Container(),
        enableEndDrawer
            ? Builder(
                builder: (context) =>Container(
                      margin: EdgeInsets.fromLTRB(3, 10, 10, 8),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.darktransparent),
                      child:
                            IconButton(
                  icon: endDrawerIcon,padding: EdgeInsets.all(0),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),)
            : Container()
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
