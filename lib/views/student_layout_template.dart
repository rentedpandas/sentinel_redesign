import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sentinel_redesign/util/locator.dart';
import 'package:sentinel_redesign/util/navigation_service.dart';
import 'package:sentinel_redesign/util/router.dart';
import 'package:sentinel_redesign/util/router_const.dart';
import 'package:sentinel_redesign/widgets/centered_view.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_bar.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_drawer.dart';

class StudentLayoutTemplate extends StatelessWidget {
  const StudentLayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateStudentRoute,
                    initialRoute: HomeRoute,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}