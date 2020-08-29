import 'package:artemy_beta_2/config/Animation.dart';
import 'package:artemy_beta_2/screens/CategoryPage.dart';
import 'package:artemy_beta_2/screens/Home.dart';
import 'package:artemy_beta_2/screens/Shop.dart';
import 'package:artemy_beta_2/screens/SignIn.dart';
import 'package:artemy_beta_2/screens/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/shop': (context) => Shop(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/category': (context) => CategoryPage(),
    },
    theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.white),
  ));
}
