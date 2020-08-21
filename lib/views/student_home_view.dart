
import 'package:flutter/material.dart';
import 'package:sentinel_redesign/widgets/centered_view.dart';
import 'package:sentinel_redesign/widgets/sentinel_details.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_bar.dart';

class StudentHomeView extends StatelessWidget {
  const StudentHomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: SentinelDetails(),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}