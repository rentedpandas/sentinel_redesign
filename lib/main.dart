import 'package:flutter/material.dart';
import 'package:sentinel_redesign/views/student_home_view.dart';

void main() => runApp(MyApp());

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
      home: StudentHomeView(),
    );
  }
}