import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
import 'package:aniron/widgets/bottom_submit_button.dart';
import 'package:aniron/widgets/order_floating_menu.dart';
import 'package:aniron/widgets/textfield_left_title.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  DateTime finaldate;
  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  String dropdownValue;

  final List paymentRequest = ['Prepaid', 'Dept', 'Pending'];
  final List paymentStatus = ['Paid', 'Unpaid'];
  final List provinceAndCity = ['Phnom Penh', 'Mundulkiri', 'Ratanakiri'];
  final List<Color> dropdownColors = [
    ThemeColor.lightgreen,
    ThemeColor.red,
    ThemeColor.orange
  ];
  Choice _selectedChoice; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AllOrderPage(),
        endDrawerEnableOpenDragGesture: false,
        endDrawer: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width - 50,
          child: Drawer(
            child: Scaffold(
              body: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: ThemeColor.grayline, width: 1))),
                      child: ListTile(
                        leading: InkWell(
                          child: Icon(Icons.clear),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        title: Container(
                          margin: EdgeInsets.only(right: 50),
                          child: Center(
                            child: Text('FIlter',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Expanded(
                        child: ListView(
                          children: <Widget>[
                            
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Order Date',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 30,
                                    child: PopupMenuButton<Choice>(
                                      icon: Icon(Icons.more_horiz),
                                      onSelected: _select,
                                      itemBuilder: (BuildContext context) {
                                        return choices
                                            // .skip(2)
                                            .map((Choice choice) {
                                          return PopupMenuItem<Choice>(
                                            value: choice,
                                            child: Text(choice.title),
                                          );
                                        }).toList();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 15),
                                child: TextFieldLeftTitleWidget(
                                  title: 'From :',
                                  showKeyboard: false,
                                  textFieldSize: 8,
                                  textController: new TextEditingController(),
                                  suffixIcon: Icon(Icons.calendar_today),
                                  onTap: () {
                                    callDatePicker();
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 15),
                                child: TextFieldLeftTitleWidget(
                                  title: 'To :',
                                  showKeyboard: false,
                                  textFieldSize: 8,
                                  suffixIcon: Icon(Icons.calendar_today),
                                  onTap: () {
                                    callDatePicker();
                                  },
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 15),
                                  child: Text(
                                    'Province / City',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 15),
                              child: Row(
                                children: <Widget>[
                                  for (var i = 0; i < 3; i++)
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      margin: EdgeInsets.only(right: 20),
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                            width: 1.3,
                                            color: ThemeColor.darktransparent,
                                            style: BorderStyle.solid),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      constraints: BoxConstraints(
                                        minWidth: 22,
                                        minHeight: 22,
                                      ),
                                      child: Text(
                                        provinceAndCity[i],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 15),
                                  child: Text(
                                    'Payment Request',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 15),
                              child: Row(
                                children: <Widget>[
                                  for (var i = 0; i < 3; i++)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 15),
                                      margin: EdgeInsets.only(right: 20),
                                      decoration: new BoxDecoration(
                                        color: dropdownColors[i],
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      constraints: BoxConstraints(
                                        minWidth: 22,
                                        minHeight: 22,
                                      ),
                                      child: Text(
                                        paymentRequest[i],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 15),
                                  child: Text(
                                    'Payment Status',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 15),
                              child: Row(
                                children: <Widget>[
                                  for (var i = 0; i < 2; i++)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 15),
                                      margin: EdgeInsets.only(right: 20),
                                      decoration: new BoxDecoration(
                                        color: dropdownColors[i],
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      constraints: BoxConstraints(
                                        minWidth: 22,
                                        minHeight: 22,
                                      ),
                                      child: Text(
                                        paymentStatus[i],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              bottomNavigationBar: BottomSubmitButtonWidget(
                buttonWidth: (MediaQuery.of(context).size.width / 2) - 82,
                firstButtonTitle: 'RESET',
                firstButtonBackgroundColor: ThemeColor.orange,
                secondButtonTitle: 'DONE',
              ),
            ),
          ),
        ),
        appBar: AppbarTopWidget(
          twoActionButtons: true,
          
          appBarTitle: 'Orders',
          showBackButton: false,
          endDrawerIcon: Icon(LineIcons.filter),
          enableEndDrawer: true,
          secondButtonIcon: Icon(Icons.search),
          secondButtonAction: (){

          },
        ),
        // floatingActionButton: OrderFloatingmenuWidget()
      );
  }
}

class AllOrderPage extends StatefulWidget {
  @override
  _AllOrderPageState createState() => _AllOrderPageState();
}

class _AllOrderPageState extends State<AllOrderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body());
  }

  Widget body() {
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        // Text(
        //   "Grand Total:",
        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        // ),
        // SizedBox(
        //   height: 7,
        // ),
        RichText(
            text: TextSpan(
          style: TextStyle(color: ThemeColor.dark),
          children: <TextSpan>[
            TextSpan(text: 'Today: ', style: TextStyle(color: Colors.grey)),
            TextSpan(text: '10-10-2020'),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        table()
      ],
    );
  }

  Widget table() {
    return Table(
      columnWidths: {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(30.0),
        2: FlexColumnWidth(
            50.0), // i want this one to take the rest available space
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
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.cart_plus, "New", 12, ThemeColor.orange, 2000),
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.get_pocket, "Accepted ", 12, ThemeColor.lightblue, 2000),
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.cube, "Packaged", 12, ThemeColor.purple, 2000),
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.truck, "Delivery", 12, ThemeColor.greencyan, 2000),
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.archive, "Completed", 12, ThemeColor.main, 2000),
        tableRow(() {
          Navigator.pushNamed(context, '/order-section');
        }, LineIcons.close, "Rejected", 12, ThemeColor.red, 2000),
        tableRowTotal(200, 8000)
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

  TableRow tableRow(VoidCallback onTap, IconData icon, String title, int txnNum,
      Color txnColor, double amount) {
    return TableRow(
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(7.0)),
            // color: Colors.white
            ),
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: ThemeColor.grayline,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            )
                          ],
                          border: Border.all(
                              width: 1.0, color: ThemeColor.grayline),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                          child: Icon(
                            icon,
                            color: ThemeColor.main,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        title,
                        // style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    width: 39,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: txnColor,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Text(
                      txnNum.toString(),
                      style: TextStyle(
                          // fontSize: 12,
                          color: Colors.white),
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Text(
                    '\$' + amount.toStringAsFixed(2).toString(),
                    // style: TextStyle(fontSize: 12),
                  )),
            ),
          ),
        ]);
  }

  TableRow tableRowTotal(int txnNumber, double amount) {
    return TableRow(
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(7.0)),
            // color: Colors.white
            ),
        children: [
          Container(),
          Container(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  txnNumber.toString(),
                  style: TextStyle(
                      color: ThemeColor.main,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  '\$' + amount.toStringAsFixed(2).toString(),
                  style: TextStyle(
                      color: ThemeColor.main,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  // style: TextStyle(fontSize: 12),
                )),
          ),
        ]);
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Today', icon: Icons.directions_car),
  const Choice(title: 'Yesterday', icon: Icons.directions_bike),
  const Choice(title: 'Last 7 days', icon: Icons.directions_boat),
  const Choice(title: 'This week', icon: Icons.directions_bus),
  const Choice(title: 'This month', icon: Icons.directions_railway),
  const Choice(title: 'This year', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
