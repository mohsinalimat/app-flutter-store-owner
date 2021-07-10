import 'package:aniron/widgets/bottom_submit_button.dart';
import 'package:aniron/widgets/search_field.dart';

import '../../widgets/social_share.dart';
import '../../widgets/textfield_left_title.dart';
import 'package:line_icons/line_icons.dart';
import '../../theme/colors.dart';
import '../../widgets/bottom_sheet_app_bar.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/appbar/appbar_text_only.dart';
import 'package:flutter/cupertino.dart';
import '../../util/helper.dart';

import '../../widgets/round_check_box_text.dart';

import 'package:flutter/material.dart';
import '../../widgets/custom_expansion_tile.dart' as custom;
import 'dart:async';
import 'dart:io';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  Image pickedImage;
  File _image;
  final List categoryList = ['Fashion', 'Cosmitic', 'Food', 'Electronic'];
  final picker = ImagePicker();
  void _modalBottomSheetSelectCategory() {
    bottomSheetModal(context, 500, selectCategory());
  }

  void _modalBottomSheetSelectType() {
    bottomSheetModal(context, 500, selectCategory());
  }

  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        _image = image;
      });
    } else {}
  }

  Future getImageFromGallery(index) async {
    // pick picture from gallery
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    // display image
    if (image != null) {
      setState(() {
        _image = image;
        pickedImage = Image.file(
          image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        );
        images[index] = pickedImage;
      });
    } else {}
  }

  Widget selectCategory() {
    return Column(
      children: <Widget>[
        BottomSheetAppBarWidget(
          title: "Category",
          onTap: () {},
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: SearchFieldWidget(
              textController: new TextEditingController(),
            )),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                for (var item in categoryList)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.settings_applications,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(item, style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Radio(
                            value: 'hey',
                            groupValue: 'groupValue',
                            activeColor: ThemeColor.main,
                            onChanged: (val) {
                              print("Radio");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Future<void> getImages() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  List<Widget> images = [
    Image.asset('assets/donut.jpg'),
    Center(
        child: Image.asset(
      'assets/add.png',
      width: 30,
      height: 30,
    )),
    Center(
        child: Image.asset(
      'assets/add.png',
      width: 30,
      height: 30,
    )),
    Center(
        child: Image.asset(
      'assets/add.png',
      width: 30,
      height: 30,
    )),
    Center(
        child: Image.asset(
      'assets/add.png',
      width: 30,
      height: 30,
    )),
    Center(
        child: Image.asset(
      'assets/add.png',
      width: 30,
      height: 30,
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBarTextOnly(appBarTitle: 'Add Product'),
        bottomNavigationBar: BottomSubmitButtonWidget(
          buttonWidth: (MediaQuery.of(context).size.width / 2) - 60,
          firstButtonTitle: 'SAVE CONTINUE',
          secondButtonTitle: 'SAVE',
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Container(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      tileIcon: Icon(
                        Icons.widgets,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'Categorize',
                      bgIconColor: ThemeColor.main,
                      haveValidation: true,
                      validationStatus: true,
                    ),
                  ),
                  children: <Widget>[
                    TextFieldLeftTitleWidget(
                      title: "Category",
                      showKeyboard: false,
                      hint: 'Category',
                      onTap: () {
                        _modalBottomSheetSelectCategory();
                      },
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Type",
                      hint: 'Type',
                      showKeyboard: false,
                      onTap: () {
                        _modalBottomSheetSelectType();
                      },
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                  ],
                ),
                //
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      tileIcon: Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'Image/Video',
                      bgIconColor: ThemeColor.lightgreen,
                      haveValidation: true,
                      validationStatus: false,
                    ),
                  ),
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1.0,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0,
                              ),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(3.0),
                                  child: SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Container(
                                                color:
                                                    ThemeColor.darktransparent,
                                                child: images[index])),
                                        Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: () {
                                                  getImageFromGallery(index);
                                                },
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),

                //
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      haveValidation: true,
                      validationStatus: true,
                      tileIcon: Icon(
                        Icons.perm_contact_calendar,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'General',
                      bgIconColor: ThemeColor.orange,
                    ),
                  ),
                  children: <Widget>[
                    TextFieldLeftTitleWidget(
                      title: "Code",
                      hint: '001',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Name",
                      hint: 'Sea Food',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Direct cost",
                      hint: '\$7',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Markup Price",
                      hint: '\$3',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Unit Price",
                      hint: '\$10',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Quantity",
                      hint: '100',
                      isImportant: true,
                      textController: new TextEditingController(),
                    ),
                    TextFieldLeftTitleWidget(
                      title: "Description",
                      hint: 'Description',
                      isImportant: false,
                      textController: new TextEditingController(),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      tileIcon: Icon(
                        Icons.shopping_basket,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'Sale Option',
                      bgIconColor: ThemeColor.lightblue,
                    ),
                  ),
                  clickChangeRoute: '/sale-option',
                  // children: <Widget>[],
                ),
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      tileIcon: Icon(
                        Icons.dns,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'Product Option',
                      bgIconColor: ThemeColor.darkblue,
                    ),
                  ),
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      child: RoundCheckBoxTextWidget(
                        isSelected: true,
                        title: "Catalog",
                        rightText: 'Size and Color',
                        titleSize: 12,
                        onTap: (bool value) {
                          // print(value);
                          Navigator.pushNamed(context, '/add-product-catalog');
                        },
                        trailing: Icon(
                          Icons.chevron_left,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      child: RoundCheckBoxTextWidget(
                        isSelected: false,
                        title: "Specifications",
                        titleSize: 12,
                        onTap: (bool value) {
                          print(value);
                        },
                        trailing: Icon(
                          Icons.chevron_left,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                custom.CustomExpansionTile(
                  title: Container(
                    height: 27,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: ExpansiontileHeader(
                      tileIcon: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 15,
                      ),
                      tileTitle: 'Auto Share',
                      bgIconColor: ThemeColor.lightgreen,
                    ),
                  ),
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SocialShareWidget(
                          socialIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/facebook.jpg',
                              width: 24,
                            ),
                          ),
                        ),
                        SocialShareWidget(
                          socialIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/telegram.jpg',
                              width: 24,
                            ),
                          ),
                        ),
                        SocialShareWidget(
                          socialIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/linecorp.jpg',
                              width: 24,
                            ),
                          ),
                        ),
                        SocialShareWidget(
                          socialIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/whatsapp.jpg',
                              width: 24,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class ExpansiontileHeader extends StatefulWidget {
  final Widget tileIcon;
  final Color bgIconColor;
  final String tileTitle;
  final bool validationStatus;
  final bool haveValidation;

  ExpansiontileHeader(
      {this.tileIcon,
      this.bgIconColor,
      this.tileTitle,
      this.haveValidation = false,
      this.validationStatus = false});

  @override
  _ExpansiontileHeaderState createState() => _ExpansiontileHeaderState();
}

class _ExpansiontileHeaderState extends State<ExpansiontileHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 3,
            child: Container(
                width: 23,
                height: 23,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: widget.bgIconColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: widget.tileIcon),
          ),
          Positioned(
            left: 35,
            top: 3,
            child: Text(
              widget.tileTitle,
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),
            ),
          ),
          widget.haveValidation == true
              ? Positioned(
                  right: 0,
                  top: 3,
                  child: Container(
                    width: 18,
                    height: 18,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: widget.validationStatus
                          ? ThemeColor.lightgreen
                          : ThemeColor.red,
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: widget.validationStatus
                        ? Icon(
                            Icons.check,
                            size: 15,
                            color: Colors.white,
                          )
                        : Icon(
                            LineIcons.question,
                            size: 18,
                            color: Colors.white,
                          ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
