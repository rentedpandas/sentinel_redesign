import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'THE SENTINEL APP.',
            style: TextStyle(fontWeight: FontWeight.w800, height: 0.9, fontSize: 50),
          ),
          SizedBox(
            height: 30,
          ),
          _TileBuilder('Sign Out', AssetImage('icons_signout.png')),
          SizedBox(
            height: 30,
          ),
          _TileBuilder('Sign Out', AssetImage('icons_signout.png')),

        ],
      ),
    );
  }
}

class _TileBuilder extends StatelessWidget {
  final String iconName;
  final AssetImage iconImage;
  const _TileBuilder(this.iconName, this.iconImage);

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