import 'package:aniron/widgets/icon_slide_button_round_line.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../theme/colors.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProductTableWidget extends StatelessWidget {
  final double tableHeaderTextSize=14;
  final double tableBodyTextSize=12;
  final double tableImageSize =40;
  final double iconSlideSize=19;
  final double textSlideSize=10;
  final bool showTotalAmount;
  final bool showIconSlideAction;
  ProductTableWidget(
      {this.showTotalAmount = false, this.showIconSlideAction = false});
  final double iconSize = 10;
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
                color: ThemeColor.light,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                overflow: Overflow.clip,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          TableRow(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7)),
                                  color: ThemeColor.main),
                              children: [
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 12, 10, 12),
                                            child: Text(
                                              'Item',
                                              style: TextStyle(
                                                  fontSize: tableHeaderTextSize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 12, 0, 12),
                                            child: Text(
                                              'Name',
                                              style: TextStyle(
                                                  fontSize: tableHeaderTextSize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 12, 0, 12),
                                            child: Text(
                                              'Quantity',
                                              style: TextStyle(
                                                  fontSize: tableHeaderTextSize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 12, 10, 12),
                                            child: Text(
                                              'Amount',
                                              style: TextStyle(
                                                  fontSize: tableHeaderTextSize,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                          for (var i = 0; i < 3; i++)
                            TableRow(decoration: BoxDecoration(), children: [
                              Container(
                                margin:
                                    EdgeInsets.only(top: 8, left: 8, right: 8),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                    Slidable(
                                      enabled:
                                          showIconSlideAction ? true : false,
                                      actionPane: SlidableBehindActionPane(),
                                      actionExtentRatio: 0.16,
                                      child: Container(
                                        child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 3),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xFFeeeeee)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: ThemeColor.lightborder,
                                                  spreadRadius: 0.01)
                                            ],
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 5,),
                                              Container(
                                                width: 55,
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 3,
                                                    color: ThemeColor.grayline),
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(image: NetworkImage("https://assets.sainsburys-groceries.co.uk/gol/2876733/1/640x640.jpg"),
                                                  fit: BoxFit.cover)
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 5, 10, 5),
                                                      child: Column(
                                                        children: <Widget>[
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              'Cocacola',
                                                              style: TextStyle(
                                                                  fontSize: tableBodyTextSize,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 3,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              'PID: 0001',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  fontSize: tableBodyTextSize),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              8, 3, 8, 3),
                                                      child: Container(
                                                        width: 39,
                                                        padding:
                                                            EdgeInsets.all(3),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                ThemeColor.main,
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        3.0))),
                                                        child: Text(
                                                          "100",
                                                          style: TextStyle(
                                                              fontSize: tableBodyTextSize,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      )),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 5, 10, 5),
                                                      child: Text(
                                                        '\$1,000.50',
                                                        style: TextStyle(
                                                            fontSize: tableBodyTextSize),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      actions: <Widget>[

                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Unpublish",
                                          buttonIcon: LineIcons.eye_slash,
                                          buttonColor: Colors.grey,
                                          onTap: (){

                                          },
                                        ),

                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Copy",
                                          buttonIcon: LineIcons.copy,
                                          buttonColor: ThemeColor.darkyellow,
                                          onTap: (){

                                          },
                                        ),

                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Delete",
                                          buttonIcon: LineIcons.trash,
                                          buttonColor: ThemeColor.red,
                                          onTap: (){

                                          },
                                        ),
                                      ],
                                      secondaryActions: <Widget>[
                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Update",
                                          buttonIcon: LineIcons.edit,
                                          buttonColor: Colors.red,
                                          onTap: (){

                                          },
                                        ),

                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Edit",
                                          buttonIcon: LineIcons.edit,
                                          buttonColor: ThemeColor.darkyellow,
                                          onTap: (){

                                          },
                                        ),

                                        IconSlideButtonRoundLineWidget(
                                          buttonTitle: "Delete",
                                          buttonIcon: LineIcons.share,
                                          buttonColor: ThemeColor.lightgreen,
                                          onTap: (){

                                          },
                                        ),
                                      ],
                                      

                                      
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.remove_red_eye,
                                      //                   size: iconSlideSize,
                                      //                 )),
                                      //             Text(
                                      //               'Unpublish',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.content_copy,
                                      //                   size: iconSlideSize,
                                      //                   color: ThemeColor
                                      //                       .darkyellow,
                                      //                 )),
                                      //             Text(
                                      //               'Copy',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.delete,
                                      //                   size: iconSlideSize,
                                      //                   color: ThemeColor.red,
                                      //                 )),
                                      //             Text(
                                      //               'Delete',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      // ],
                                      // secondaryActions: <Widget>[
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.note,
                                      //                   size: iconSlideSize,
                                      //                   color: ThemeColor.red,
                                      //                 )),
                                      //             Text(
                                      //               'Update',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.edit,
                                      //                   size: iconSlideSize,
                                      //                   color: ThemeColor
                                      //                       .darkyellow,
                                      //                 )),
                                      //             Text(
                                      //               'Edit',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      //   IconSlideAction(
                                      //     iconWidget: Container(
                                      //         margin: EdgeInsets.only(top: 6),
                                      //         child: Column(
                                      //           children: <Widget>[
                                      //             Container(
                                      //                 decoration: BoxDecoration(
                                      //                     border: Border.all(
                                      //                         width: 1.0,
                                      //                         color: const Color(
                                      //                             0xFFcccccc)),
                                      //                     borderRadius:
                                      //                         BorderRadius
                                      //                             .circular(
                                      //                                 50)),
                                      //                 padding:
                                      //                     EdgeInsets.all(5),
                                      //                 child: Icon(
                                      //                   Icons.share,
                                      //                   size: iconSlideSize,
                                      //                   color: Colors.green,
                                      //                 )),
                                      //             Text(
                                      //               'Share',
                                      //               style: TextStyle(
                                      //                   fontSize: textSlideSize,
                                      //                   height: 1.5),
                                      //             )
                                      //           ],
                                      //         )),
                                      //     onTap: () => {},
                                      //   ),
                                      //],
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          if (showTotalAmount == true)
                            TableRow(children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: 150,
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Total:',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            '  \$4,002.00',
                                            style: TextStyle(
                                                color: ThemeColor.main,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )))
                            ])
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
