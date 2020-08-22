
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sentinel_redesign/views/student_home_view_mobile.dart';
import 'package:sentinel_redesign/views/student_home_view_nonmobile.dart';
import 'package:sentinel_redesign/widgets/centered_view.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_drawer.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_bar.dart';

class StudentHomeView extends StatelessWidget {
  const StudentHomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: StudentHomeViewMobile(),
                  desktop: StudentHomeViewNonMobile(),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}