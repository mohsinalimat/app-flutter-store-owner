import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/appbar_top.dart';
import 'package:aniron/widgets/bottom_submit_button.dart';
import 'package:aniron/widgets/product_table.dart';
import 'package:flutter/material.dart';

class OrderSectionDetailPage extends StatefulWidget {
  @override
  _OrderSectionDetailPageState createState() => _OrderSectionDetailPageState();
}

class _OrderSectionDetailPageState extends State<OrderSectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarTopWidget(
          appBarTitle: 'New Order Details',
        ),
        bottomNavigationBar: BottomSubmitButtonWidget(
           buttonWidth:  (MediaQuery.of(context).size.width / 2) - 60,
          firstButtonTitle: 'REVERT',
          secondButtonTitle: 'ACCEPT',
          firstButtonBackgroundColor: ThemeColor.orange,
        ),
        body: SingleChildScrollView(
          child: Container(
              color: ThemeColor.main,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0, top: 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          width: 100,
                          height: 100,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage('https://i.pinimg.com/originals/62/b4/7c/62b47cd6035d4d8809e7c03b791a576b.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                              // userMessages[index]['online']
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Hayat Uzun',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 135,
                                child: Text(
                                  'Tel: (+855)12 345 678',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 135,
                                child: Text(
                                  'CID : OD-0001',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          for (var i = 0; i < 3; i++)
                            CustomDetailInfo(indexed: i),
                          ProductTableWidget(
                            showTotalAmount: true,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          for (var i = 0; i < 3; i++) SubDetailInfo(indexed: i),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}

class CustomDetailInfo extends StatelessWidget {
  final int indexed;
  final double fontSize = 13;
  final List<Map<String, String>> listData = [
    {'label': 'Order Id', 'value': '0012'},
    {'label': 'Order Date', 'value': '10-01-2021 10:00AM'},
    {
      'label': 'Shipping Address',
      'value': '123 Street, Toulkok, Phnom Penh, Cambodia'
    }
  ];

  CustomDetailInfo({
    this.indexed,
  });
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(top:7),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 10,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    listData.map((array) => array['label']).toList()[indexed],
                    style: TextStyle(fontSize: fontSize),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(':', style: TextStyle(fontSize: fontSize)),
              ),
            ),
            Expanded(
                flex: 20,
                child: IntrinsicHeight(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 5,
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  listData
                                      .map((array) => array['value'])
                                      .toList()[indexed],
                                  style: TextStyle(fontSize: fontSize)))),
                      indexed == 2
                          ? Expanded(
                              flex: 1,
                              child: Container(
                                  child: Icon(
                                Icons.location_on,
                                color: ThemeColor.main,
                                size: 39,
                              )))
                          : Container()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class SubDetailInfo extends StatelessWidget {
  final int indexed;
  final double fontSize = 13;
  final List<Map<String, String>> listData = [
    {'label': 'Payment Request', 'value': 'Debt'},
    {'label': 'Payment Status', 'value': 'Unpaid'},
    {'label': 'Outstanding Dabt', 'value': '\$150.00'},
    {'label': 'Order Status', 'value': 'New'}
  ];
  SubDetailInfo({this.indexed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 6, bottom: 6),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 10,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      listData.map((array) => array['label']).toList()[indexed],
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(':', style: TextStyle(fontSize: fontSize)),
                ),
              ),
              Expanded(
                flex: 20,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      listData.map((array) => array['value']).toList()[indexed],
                      style: TextStyle(
                          fontSize: fontSize,
                          color: (indexed == 2 || indexed == 1)
                              ? Colors.red
                              : Colors.black)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: (indexed == 2 || indexed == 1)
                      ? Icon(Icons.chevron_right)
                      : null,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: ThemeColor.dark,
          height: 1,
          thickness: 0.2,
        )
      ],
    );
  }
}
