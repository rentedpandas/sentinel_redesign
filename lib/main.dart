import 'package:flutter/material.dart';
import 'package:sentinel_redesign/util/locator.dart';
import 'package:sentinel_redesign/views/signin_view.dart';

void main() {
  setuepLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sentinel App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Helvetica Neue',
      ),
      home: SignInView(), // Lville uses firebase?
    );
  }
}