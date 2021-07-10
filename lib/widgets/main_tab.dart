import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:aniron/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  List<String> routes = ['/', '/product', '/chat','/order','/account'];
  String newroute;
  int index = 0;
  getActiveRoute(context) {
    for (var route in routes) {
      if (route == ModalRoute.of(context).settings.name) return index;
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      activeColor: ThemeColor.secondary,
      color: ThemeColor.main,
      backgroundColor: Colors.white,
        items: [
          TabItem(icon: LineIcons.home, title: 'Home'),
          TabItem(icon: LineIcons.cart_plus, title: 'Products'),
          TabItem(icon: Icons.chat, title: 'Chat'),
          TabItem(icon: Icons.shopping_cart, title: 'Order'),
          TabItem(icon: Icons.people, title: 'Accounts'),
        ],
        initialActiveIndex: getActiveRoute(context), //optional, default as 0
        onTap: (int i) => {
              newroute = routes[i],
              Navigator.pushReplacementNamed(context, newroute)
            });
  }
}
