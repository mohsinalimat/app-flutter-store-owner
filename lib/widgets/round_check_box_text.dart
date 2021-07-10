import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/round_check_box.dart';
import 'package:flutter/material.dart';

typedef BoolCallback = Function(bool status);

class RoundCheckBoxTextWidget extends StatefulWidget {
  final bool isSelected;
  final String title;
  Widget trailing;
  final BoolCallback onTap;
  final String rightText;
  final double titleSize;

  RoundCheckBoxTextWidget(
      {Key key,
      this.isSelected = false,
      this.title = "title",
      this.trailing,
      this.titleSize = 15,
      this.onTap,
      this.rightText = ''})
      : super(key: key);

  @override
  _RoundCheckBoxTextState createState() => _RoundCheckBoxTextState(
      this.isSelected, this.title, this.trailing, this.onTap);
}

class _RoundCheckBoxTextState extends State<RoundCheckBoxTextWidget> {
  bool isSelected;
  String title;
  Widget trailing;
  BoolCallback onTap;

  _RoundCheckBoxTextState(
      this.isSelected, this.title, this.trailing, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ThemeColor.grayline, width: 1))),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 2.0),
            title: Row(
              children: <Widget>[
                RoundCheckbox(
                  value: this.isSelected,
                  inActiveColor: ThemeColor.main,
                  activeColor: ThemeColor.main,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (bool value) {
                    this.setState(() {
                      this.isSelected = !this.isSelected;
                    });
                    onTap(this.isSelected);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: widget.titleSize),
                ),
                widget.rightText != ''
                    ? Container(
                        child: Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              widget.rightText,
                              style:
                                  TextStyle(fontSize: widget.titleSize - 1.0),
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            trailing: this.trailing,
            onTap: () {
              this.setState(() {
                this.isSelected = !this.isSelected;
              });
              onTap(this.isSelected);
            },
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 0,
            width: 30,
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 2))),
          ),
        )),
      ],
    );
  }
}
