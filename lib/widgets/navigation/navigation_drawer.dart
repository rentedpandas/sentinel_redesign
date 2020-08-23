import 'package:flutter/material.dart';
import 'package:sentinel_redesign/util/router_const.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_drawer_header.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Tiles', Icons.school, TilesRoute),
          DrawerItem('About', Icons.person, AboutRoute),
          DrawerItem('Logout', Icons.lock, LogoutRoute),
        ],
      ),
    );
  }
}