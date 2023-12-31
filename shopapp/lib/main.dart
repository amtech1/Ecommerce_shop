import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/models/Shop.dart';
import 'package:shopapp/pages/Shop_page.dart';
import 'package:shopapp/pages/cart_page.dart';
import 'package:shopapp/pages/intro_page.dart';
import 'package:shopapp/themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightmode,
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/Shoppage': (context) => const ShopPage(),
        '/Cart': (context) => const cartpage()
      },
    );
  }
}
