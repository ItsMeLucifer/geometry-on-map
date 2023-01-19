import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geometry_on_map_assignment/view/map/map_page.dart';
import 'package:geometry_on_map_assignment/viewmodel/map_view_model.dart';

final ChangeNotifierProvider<MapViewModel> leaderboardProvider =
    ChangeNotifierProvider((_) => MapViewModel());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MapPage(),
    );
  }
}
