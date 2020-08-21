import 'package:flutter/material.dart';

class SentinelDetails extends StatelessWidget {
  const SentinelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            'THE SENTINEL APP.',
            style: TextStyle(fontWeight: FontWeight.w800, height: 0.9, fontSize: 50),
          ),
          SizedBox(
            height: 30,
          ),
          //GridView.count(
          //  crossAxisCount: 2,
              //TileBuilder('Sign Out', AssetImage('icons_signout.png')),
              //TileBuilder('Face Game', AssetImage('icons_facegame.png')),
              //TileBuilder('24 Hour Pass', AssetImage('icons_24hpass.png')),
              //TileBuilder('Projects', AssetImage('icons_list.png')),
          //),

          // BROKEN :(

        ],
      ),
    );
  }
}