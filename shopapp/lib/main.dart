import 'package:flutter/material.dart';
import 'package:shopapp/pages/intro_page.dart';
import 'package:shopapp/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightmode,
    );
  }
}
