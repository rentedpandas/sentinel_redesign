import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 70,
      child: Image.asset('assets/sentinel.png'),
    );
  }
}