import 'package:flutter/material.dart';

class TileBuilder extends StatelessWidget {
  final String iconName;
  final AssetImage iconImage;
  const TileBuilder(this.iconName, this.iconImage);

// Something is broken in here...

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Text(
        iconName,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 277, 41, 47),
        image: new DecorationImage(image: iconImage),
      ),
    );
  }
}