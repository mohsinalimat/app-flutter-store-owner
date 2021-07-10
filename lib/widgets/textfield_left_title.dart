import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/text_form_dropdown.dart';
import 'package:flutter/material.dart';

class TextFieldLeftTitleWidget extends StatefulWidget {
  final String title;
  final String hint;
  final bool isImportant;
  final TextEditingController textController;
  String textFieldData;
  final Function onTap;
  final bool showKeyboard;
  final bool enableTextFieldBorder;
  final bool enableTextFieldSize;
  final double textFieldSize;
  final Widget suffixIcon;
  final bool isDropdownTextForm;
  final List<String> dropdownTextFormItem;
  String textfieldValue='Size 32 with color (RGB)';

  TextFieldLeftTitleWidget(
      {Key key,
      this.textfieldValue = '',
      this.dropdownTextFormItem = const [],
      this.isDropdownTextForm = false,
      this.title,
      this.suffixIcon = null,
      this.enableTextFieldSize = false,
      this.textFieldSize = 8,
      this.enableTextFieldBorder = false,
      this.onTap,
      this.showKeyboard = true,
      this.hint = '',
      this.isImportant = false,
      this.textController})
      : super(key: key);

  @override
  _TextFieldLeftTitleWidgetState createState() =>
      _TextFieldLeftTitleWidgetState();
}

class _TextFieldLeftTitleWidgetState extends State<TextFieldLeftTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RichText(
                text: new TextSpan(
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(text: widget.title),
                    (widget.isImportant)
                        ? new TextSpan(
                            text: '*',
                            style: new TextStyle(color: ThemeColor.red))
                        : TextSpan(text: ''),
                  ],
                ),
              )),
        ),
        Expanded(
          flex: 7,
          child: Container(
            child: !widget.isDropdownTextForm
                ? TextField(
                    scrollPadding: EdgeInsets.all(0),
                    onChanged: (e) {
                      setState(() {
                        widget.textfieldValue = e;
                      });
                    },

                    // style: TextStyle(fontSize: 13),
                    focusNode:
                        !widget.showKeyboard ? AlwaysDisabledFocusNode() : null,
                    onTap: () {
                      // widget.textController.text='dfdfdfd';
                      widget.onTap() ? widget.onTap() : null;
                    },
                    controller:
                        new TextEditingController(text: widget.textfieldValue),
                    decoration: new InputDecoration(
                      suffixIcon: widget.suffixIcon != null
                          ? widget.suffixIcon
                          : Container(),
                      isDense: widget.enableTextFieldSize,
                      contentPadding: EdgeInsets.all(widget.textFieldSize),
                      hintText: widget.hint,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.grayline),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.main),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.grayline),
                      ),
                    ))
                : TextFormDropdown(),
          ),
        )
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
