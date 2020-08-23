import 'package:flutter/material.dart';
import 'package:sentinel_redesign/util/router_const.dart';
import 'package:sentinel_redesign/views/duty/duty_home_view.dart';
import 'package:sentinel_redesign/views/logout_view.dart';
import 'package:sentinel_redesign/views/student/student_home_view.dart';
import 'package:sentinel_redesign/views/tiles/about_tile.dart';
import 'package:sentinel_redesign/views/tiles/aldo_leopold_tile.dart';
import 'package:sentinel_redesign/views/tiles/duty_app_tile.dart';
import 'package:sentinel_redesign/views/tiles/duty_tiles_view.dart';
import 'package:sentinel_redesign/views/tiles/face_game_tile.dart';
import 'package:sentinel_redesign/views/tiles/face_voice_editor_tile.dart';
import 'package:sentinel_redesign/views/tiles/lq_trivia_tile.dart';
import 'package:sentinel_redesign/views/tiles/scheduling_sheet_tile.dart';
import 'package:sentinel_redesign/views/tiles/screen_interact_tile.dart';
import 'package:sentinel_redesign/views/tiles/signout_tile.dart';
import 'package:sentinel_redesign/views/tiles/student_tiles_view.dart';
import 'package:sentinel_redesign/views/tiles/tfh_pass_tile.dart';

Route<dynamic> generateStudentRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case TilesRoute:
      return _getPageRoute(StudentTilesView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case SignoutAppRoute:
      return _getPageRoute(SignoutAppView());
    case FaceGameRoute:
      return _getPageRoute(FaceGameView());
    case FaceVoiceEditorRoute:
      return _getPageRoute(FaceVoiceEditorView());
    case TFHPassRoute:
      return _getPageRoute(TFHPassView());
    case LQTriviaRoute:
      return _getPageRoute(LQTriviaView());
    case SchedulingSheetRoute:
      return _getPageRoute(SchedulingSheetView());
    case ScreenInteractRoute:
      return _getPageRoute(ScreenInteractView());
    case AldoLeopoldMapRoute:
      return _getPageRoute(AldoLeopoldView());
    case LogoutRoute:
      return _getPageRoute(LogoutView());
    default:
      return _getPageRoute(StudentHomeView());
  }
}

Route<dynamic> generateDutyRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case TilesRoute:
      return _getPageRoute(DutyTilesView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case DutyAppRoute:
      return _getPageRoute(DutyAppView());
    case FaceGameRoute:
      return _getPageRoute(FaceGameView());
    case FaceVoiceEditorRoute:
      return _getPageRoute(FaceVoiceEditorView());
    case ScreenInteractRoute:
      return _getPageRoute(ScreenInteractView());
    case AldoLeopoldMapRoute:
      return _getPageRoute(AldoLeopoldView());
    case LogoutRoute:
      return _getPageRoute(LogoutView());
    default:
      return _getPageRoute(DutyHomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}