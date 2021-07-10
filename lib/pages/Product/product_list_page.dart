import 'package:flutter/material.dart';
import '../../widgets/product_table.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductTableWidget(
      showIconSlideAction: true,
    );
  }
}
