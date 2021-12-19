import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kushtia Bazar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}





// ECOMMENCE 

// PRODUCT 
// PRODUCT_DETAILS
// CART b
// ORDERS
// ADDRESS -> cHEKOUT -> PAYMENT -> THANK YOU
// LOGIN -> REGISTER -> FORGOT PASSWORD
// PROFILE
// SEARCH
// CATEGORY
// BRANDS


// 
// Dart Basics - Variable , LOOP(FOR,WHILE,DO WHILE), IF, SWITCH, FUNCTION, CLASS,OOP, INTERFACE, ABSTRACT CLASS, INHERITANCE, POLYMORPHISM, EXCEPTION HANDLING(TRY CATCH),

// Future,Stream , Async, Await, FutureBuilder, StreamBuilder,
// Statless Widget, Stateful Widget, Inherited Widget,
// Material Design, Cupertino Design,
// Container, Row, Column, Expanded, Flexible,Stack, Wrap,
// Text, RichText, TextStyle, TextAlign, TextDirection, 
// Image, AssetImage, NetworkImage, Image.asset, Image.network,
// Icon, IconData, IconTheme, IconThemeData,
// RaisedButton, FlatButton, OutlineButton, FloatingActionButton,
// GestureDetector, TapGestureDetector, LongPressGestureDetector,
// Animation, AnimationController, Tween, CurvedAnimation,
// AnimatedWidget, AnimatedBuilder, AnimatedSwitcher,
// State Managment, InheritedWidget, Provider, ChangeNotifier,
// Http Request, HttpClient, HttpClientRequest, HttpClientResponse,
// Json, JsonDecoder, JsonEncoder, JsonEncoding, JsonDecode, JsonEncode,
// List, Map, Set,
// Data type , String, int, double, bool,
// main function, runApp, StatelessWidget, StatefulWidget,
// VSCODE, FLUTTER, GIT, GITHUB,PEAR OS


// ` -backtick
// ~ -tilde
//  ! - bang
// @ -
// # -hash
// $ -dollar
// % -percent
// ^ -caret/cap
// & -ampersand
// * -asterisk
// () -left parenthesis
// { } - curly bracket
// [ ] - square bracket
// < > - angle bracket
// \ - backslash
// | - pipe