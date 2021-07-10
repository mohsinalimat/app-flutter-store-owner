import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'home_page.dart';
import 'Product/product_page.dart';
import 'Chat/chat_page.dart';
import 'Order/order_page.dart';
import 'Account/account_page.dart';

class DashboardPage extends StatefulWidget {
  int _selectedIndex = 0;
  final Color activeColor = ThemeColor.orange;
  final List<Widget> pages = <Widget>[
    HomePage(),
    Product(),
    ChatPage(),
    OrderPage(),
    AccountPage()
  ];
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: ThemeColor.main,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              title: Text('Product'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                'Order',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
            ),
          ],
          currentIndex: widget._selectedIndex,
          selectedItemColor: ThemeColor.orange,
          onTap: (e) {
            widget._selectedIndex = e;
            setState(() {});
          },
        ),
        body: Container(
            child: AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                child: widget.pages.elementAt(widget._selectedIndex))));
  }
}
