import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geometry_on_map_assignment/view/map/map_page.dart';
import 'package:geometry_on_map_assignment/viewmodel/map_view_model.dart';

final ChangeNotifierProvider<MapViewModel> mapProvider =
    ChangeNotifierProvider((_) => MapViewModel());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
          outline: Colors.tealAccent[700],
        ),
      ),
      home: const MapPage(),
    );
  }
}
