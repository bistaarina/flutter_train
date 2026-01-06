import 'package:flutter/material.dart';
import 'package:bit_learning/shared/bottom_nav_bar.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is a root app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Merriweather'),
      home: BottomNavBar(),
    );
  }
}
