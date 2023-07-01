

import 'package:organic_food/HomePage.dart';

import 'CartPage.dart';
import 'screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: 'Home_Screen',
      routes: {
        'Home_Screen': (context) => HomeScreen(),
        'Home_Page': (context) => HomePage(),
        'Cart_Page': (context) => CartPage(),
      },
    ),
  );
}
