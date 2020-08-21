import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:sentinel_redesign/widgets/navigation/navigation_bar_nonmobile.dart';
import 'package:sentinel_redesign/widgets/navigation/navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarNonMobile(),
    );
  }
}