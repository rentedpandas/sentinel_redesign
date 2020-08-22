import 'package:flutter/material.dart';
import 'package:sentinel_redesign/util/const.dart';

class TileBuilder extends StatelessWidget {
  final String name;
  final IconData icon;
  const TileBuilder(this.name, this.icon);

// Something is broken in here...

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),
      ),
      decoration: BoxDecoration(
        color: sentinelRed,
      ),
      // add some sort of children <Widget>[List] to call var icon
    );
  }
}