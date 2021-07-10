import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/round_check_box.dart';
import 'package:flutter/material.dart';

class SocialShareWidget extends StatefulWidget {
  Widget socialIcon;
  SocialShareWidget({this.socialIcon});
  @override
  _SocialShareWidgetState createState() => _SocialShareWidgetState();
}

class _SocialShareWidgetState extends State<SocialShareWidget> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              border: Border(
                top: BorderSide(width: 2, color: ThemeColor.darktransparent),
                left: BorderSide(width: 2, color: ThemeColor.darktransparent),
                right: BorderSide(width: 2, color: ThemeColor.darktransparent),
                bottom: BorderSide(width: 2, color: ThemeColor.darktransparent),
              ),
            ),
            padding: EdgeInsets.all(1),
            child: Container(
              child: Row(
                children: <Widget>[
                  RoundCheckbox(
                    value: selected,
                    onChanged: (va) {
                      setState(() {
                        selected = va;
                      });
                    },
                  ),
                  widget.socialIcon,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
