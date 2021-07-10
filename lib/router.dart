import 'package:flutter/material.dart';

import './pages/Product/product_catalog.dart';
import './pages/Order/order_section_detail_page.dart';
import './pages/Order/order_section_page.dart';
import './pages/Product/SaleOption/sale_option_page.dart';
import './pages/Product/add_product_page.dart';
import './pages/Account/account_page.dart';
import './pages/Chat/chat_page.dart';
import './pages/Financial/financial_page.dart';
import './pages/Order/order_page.dart';
import './pages/Product/product_page.dart';
import './pages/SPN/spn_page.dart';
import './pages/dashboard_page.dart';
import './pages/Authorization/login_page.dart';
import './pages/Authorization/signup_page.dart';
import './pages/Marketing/marketing_page.dart';
import './pages/Report/report_page.dart';
import './pages/Notification/notification_page.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case '/login':
      return MaterialPageRoute(builder: (context) => Login());
    case '/signup':
      return MaterialPageRoute(builder: (context) => Signup());
    case '/spn':
      return MaterialPageRoute(builder: (context) => SPNPage());
    case '/product':
      return MaterialPageRoute(builder: (context) => Product());
    case '/chat':
      return MaterialPageRoute(builder: (context) => ChatPage());
    case '/order':
      return MaterialPageRoute(builder: (context) => OrderPage());
    case '/add-product':
      return MaterialPageRoute(builder: (context) => AddProduct());
    case '/report':
      return MaterialPageRoute(builder: (context) => ReportPage());
    case '/account':
      return MaterialPageRoute(builder: (context) => AccountPage());
    case '/marketing':
      return MaterialPageRoute(builder: (context) => MarketingPage());
    case '/financial':
      return MaterialPageRoute(builder: (context) => FinancialPage());
    case '/':
      return MaterialPageRoute(builder: (context) => DashboardPage());
    case '/add-product-catalog':
      return MaterialPageRoute(builder: (context) => ProductCatalog());
    case '/sale-option':
      return MaterialPageRoute(builder: (context) => SaleOptionPage());
    case '/notification':
      return MaterialPageRoute(builder: (context) => NotificationPage());
    case '/order-section':
      return MaterialPageRoute(builder: (context) => OrderSectionPage());
    case '/order-section-detail':
      return MaterialPageRoute(builder: (context) => OrderSectionDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                    child: Column(
                  children: <Widget>[
                    Text(
                      "Undefined Route",
                      style: TextStyle(color: Colors.redAccent, fontSize: 23),
                    ),
                  ],
                )),
              ));
  }
}
