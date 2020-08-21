import 'package:flutter/material.dart';
import 'package:sentinel_redesign/widgets/navigation/nav_icon.dart';
import 'package:sentinel_redesign/widgets/navigation/nav_bar_item.dart';

class NavigationBarNonMobile extends StatelessWidget {
  const NavigationBarNonMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavIcon(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Tiles'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Logout'),
            ],
          )
        ],
      ),
    );
  }
}