import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sentinel_redesign/util/const.dart';

import 'main_test.dart';

void main() {
  testWidgets('designing and testing future TileBuilder() implementation tbh', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.widgetWithIcon(Card, Icons.exit_to_app), findsOneWidget);
  });
}

class TileBuilderTest extends StatelessWidget {
  const TileBuilderTest({Key key, this.tile}) : super(key: key);
  final Tile tile;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: sentinelRed,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: 
                Icon(tile.icon, size: 40.0, color: Colors.grey)
            ),
            Text(tile.title, style: Theme.of(context).textTheme.headline4),
          ],
        ),
      )
    );
  }
}

class Tile {
  final String title;
  final IconData icon;
  const Tile({this.title, this.icon});
}

const List<Tile> tiles = const [
  const Tile(title: 'Signout App', icon: Icons.exit_to_app),
  const Tile(title: 'Face Game', icon: Icons.face),
  const Tile(title: '24-Hour Pass', icon: Icons.timer),
  const Tile(title: 'Projects', icon: Icons.folder_open),
];