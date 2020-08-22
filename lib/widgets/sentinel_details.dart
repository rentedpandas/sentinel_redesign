import 'package:flutter/material.dart';

class SentinelDetails extends StatelessWidget {
  const SentinelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String firstName = 'Brian'; // get firstname from firebase, something like firebase.auth().currentUser.displayName
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome back, $firstName.',
            style: TextStyle(fontWeight: FontWeight.w300, height: 0.9, fontSize: 50),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}