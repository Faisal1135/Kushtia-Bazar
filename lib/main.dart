import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kushtia Bazar ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class Student {}

// ECOMMENCE 

// PRODUCT 
// PRODUCT_DETAILS
// CART
// ORDERS
// ADDRESS -> cHEKOUT -> PAYMENT -> THANK YOU
// LOGIN -> REGISTER -> FORGOT PASSWORD
// PROFILE
// SEARCH
// CATEGORY
// BRANDS