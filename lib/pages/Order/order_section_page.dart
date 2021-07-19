
import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
import 'package:aniron/widgets/order_floating_menu.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OrderSectionPage extends StatefulWidget {
  @override
  _OrderSectionPageState createState() => _OrderSectionPageState();
}

class _OrderSectionPageState extends State<OrderSectionPage> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarTopWidget(
          appBarTitle: 'New Order',
          showBackButton: true,
          enableActionButton: true,
          firstButtonIcon: Icon(LineIcons.filter),
          firstButtonAction: () {
            // popupSheetModal(context, Text('test'));
          },
        ),
        body: GestureDetector(
            onTap: () {
              fabKey.currentState.close();
            },
            child: ListView(
              padding: EdgeInsets.all(15),
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Grand Total:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                RichText(
                    text: TextSpan(
                  style: TextStyle(color: ThemeColor.dark),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Today: ',
                        style: TextStyle(color: ThemeColor.main)),
                    TextSpan(text: '10-10-2020'),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                table(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Transaction Order:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                trasactions(context)
              ],
            )),
        floatingActionButton: OrderFloatingmenuWidget(
          fabKey: fabKey,
          currentStand: 5,
        )
      );
  }
}

Widget trasactions(context) {
  List data = [1, 2, 2, 4, 2, 2];

  return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext builder, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            padding:
                const EdgeInsets.only(bottom: 6, top: 6, left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ThemeColor.grayline)),
            child: ListTile(
                contentPadding: EdgeInsets.only(left: 6.0, right: 5),
                onTap: () {
                  Navigator.pushNamed(context, '/order-section-detail');
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage('https://i.pinimg.com/originals/62/b4/7c/62b47cd6035d4d8809e7c03b791a576b.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Mikel Chou",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10-10-2010 10:20 AM",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )),
                    Container(
                      padding:
                          EdgeInsets.only(top: 2, bottom: 5, right: 0, left: 0),
                      alignment: Alignment.center,
                      width: 65,
                      decoration: BoxDecoration(
                          color: ThemeColor.lightgreen,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Text(
                        "prepaid",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                //subtitle: Text("10-10-2010 10:20 AM",style: TextStyle(fontSize: 12 ),),
                trailing: Text("\$800.00")),
          ),
        );
      });
}

Widget table() {
  return Table(
    columnWidths: {
      0: IntrinsicColumnWidth(),
      1: IntrinsicColumnWidth(),
      2: IntrinsicColumnWidth(),
    },
    border: TableBorder(
        bottom: BorderSide(
            width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
        right: BorderSide(
            width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
        left: BorderSide(
            width: 1, color: ThemeColor.grayline, style: BorderStyle.solid),
        horizontalInside: BorderSide(
            width: 1, color: ThemeColor.grayline, style: BorderStyle.solid)),
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    textBaseline: TextBaseline.alphabetic,
    children: [
      tableHeader(),
      tableRow(LineIcons.cart_plus, "New", 12, ThemeColor.red, 2000),
    ],
  );
}

TableRow tableHeader() {
  return TableRow(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7), topRight: Radius.circular(7)),
          color: ThemeColor.main),
      children: [
        Container(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
              child: Text(
                'Order Status',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Text(
                'Number Txn',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
              child: Text(
                'Amount',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
        ),
      ]);
}

TableRow tableRow(
    IconData icon, String title, int txnNum, Color txnColor, double amount) {
  return TableRow(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.all(Radius.circular(7.0)),
          // color: Colors.white
          ),
      children: [
        Container(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: ThemeColor.red),
                  ),
                ],
              )),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                txnNum.toString(),
                style: TextStyle(
                    // fontSize: 12,
                    color: ThemeColor.dark),
              )),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                '\$' + amount.toStringAsFixed(2).toString(),
                // style: TextStyle(fontSize: 12),
              )),
        ),
      ]);
}
