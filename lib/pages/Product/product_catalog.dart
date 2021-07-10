import 'dart:ui';
import 'package:aniron/theme/colors.dart';
import 'package:aniron/util/helper.dart';
import 'package:aniron/widgets/appbar/appbar_text_only.dart';
import 'package:aniron/widgets/bottom_sheet_app_bar.dart';
import 'package:aniron/widgets/catalog_filter_widget.dart';
import 'package:aniron/widgets/catalog_item_select_layout_2.dart';
import 'package:aniron/widgets/image_upload.dart';
import 'package:aniron/widgets/search_field.dart';
import 'package:aniron/widgets/textfield_left_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:core';

class ProductCatalog extends StatefulWidget {
  @override
  _ProductCatalogState createState() => _ProductCatalogState();
}

class _ProductCatalogState extends State<ProductCatalog> {
  final List catalogList = [
    'Size (32) with color (RGB)',
    'Size (XL) with color (RGB)',
    'Size with color',
    'Color'
  ];

  Widget selectCatalog() {
    return Column(
      children: <Widget>[
        BottomSheetAppBarWidget(
          title: "Catalog",
          onTap: () {},
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
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
                for (var item in catalogList)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
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

  @override
  Widget build(BuildContext context) {
    void _modalBottomSheetSelectCatalog() {
      bottomSheetModal(context, 500, selectCatalog());
    }

    return Scaffold(
        appBar: AppBarTextOnly(
          appBarTitle: 'Catalog',
          haveRightButton: true,
        ),
        body: SingleChildScrollView(
            child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 19),
                child: TextFieldLeftTitleWidget(
                  title: "Catalog",
                  showKeyboard: false,
                  hint: 'Category',
                  onTap: () {
                    _modalBottomSheetSelectCatalog();
                  },
                  isImportant: true,
                  textController: new TextEditingController(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 5,
                color: ThemeColor.darktransparent,
              ),
              CatalogFilterWidget(
                title: 'Color',
                body: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                    ),
                    for (var i = 0; i < 3; i++)
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(bottom: 8, left: 10),
                        leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: ThemeColor.darktransparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Stack(
                              children: [
                                ImageUploadWidget(),
                                Positioned(
                                    top: 13,
                                    left: 13,
                                    child: Icon(Icons.camera_alt)),
                              ],
                            )),
                        title: Container(
                            padding: EdgeInsets.only(
                              right: 3,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: ThemeColor.darktransparent,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextField(
                                  //
                                  decoration: new InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, color: Colors.transparent),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, color: Colors.transparent),
                                    ),
                                  ),
                                  //
                                  controller:
                                      new TextEditingController(text: 'Red'),
                                )
                                    // Text('Red')
                                    ),
                                Radio(
                                  value: 'hey',
                                  groupValue: 'groupValue',
                                  activeColor: ThemeColor.main,
                                  onChanged: (val) {
                                    print("Radio");
                                  },
                                )
                              ],
                            )),
                      ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 5,
                color: ThemeColor.darktransparent,
              ),
              CatalogFilterWidget(
                  title: 'Size',
                  body: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 3,
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 10.0,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 50,
                              padding: EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 50,
                                child: Container(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: ThemeColor
                                                .darktransparent, //                   <--- border color
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 30,
                                              child: TextField(
                                                //
                                                decoration: new InputDecoration(
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 0,
                                                        color:
                                                            Colors.transparent),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 0,
                                                        color:
                                                            Colors.transparent),
                                                  ),
                                                  border: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 0,
                                                        color:
                                                            Colors.transparent),
                                                  ),
                                                ),
                                                //
                                                controller:
                                                    new TextEditingController(
                                                        text: 'Red'),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 10,
                                                height: 50,
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Radio(
                                                value: 'hey',
                                                groupValue: 'groupValue',
                                                activeColor: ThemeColor.main,
                                                onChanged: (val) {
                                                  print("Radio");
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 10,
                      ),
                    ],
                  )),
              CatalogItemSelectLayout2Widget(
                enableTotal: true,
                title: 'Control Matric Stock Qty',
                info: 'Matric size with color of quantity',
              ),
              CatalogItemSelectLayout2Widget(
                title: 'Arrange Matric Price \$',
                info: 'Matric size with color of price \$',
              ),
            ],
          ),
        )));
  }
}
