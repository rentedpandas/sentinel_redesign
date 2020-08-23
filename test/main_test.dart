import 'package:flutter/material.dart';

import 'tile_test.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Sentinel Tiles";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: GridView.count(
                crossAxisCount: 3,
                children: List.generate(tiles.length, (index) {
                  return Center(
                    child: TileBuilderTest(tile: tiles[index]),
                  );
                }))));
  }
}