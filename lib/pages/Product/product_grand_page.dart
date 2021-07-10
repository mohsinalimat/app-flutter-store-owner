import 'package:flutter/material.dart';
import '../../widgets/product_grand_list.dart';

class ProductGrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Grand Total',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            ProductGrandListWidget(
              myData: ['All'],
            ),
            Container(
                margin: EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Grand By Category',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            ProductGrandListWidget(
              myData: ['Cosmetic', 'Food','Electronic','Fashion'],
            ),
          ],
        ),
      ),
    );
  }
}
