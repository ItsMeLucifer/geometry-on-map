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
      ),
      home: HomePage(ref),
    );
  }
}

// A class that is used as an intermediary to call a
// method that retrieves data from a field.json file.
class HomePage extends StatefulWidget {
  final WidgetRef ref;
  const HomePage(this.ref, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _fetchFieldData();
  }

  void _fetchFieldData() async {
    // The function is delayed because Scaffold is not created yet,
    // and because ChangeNotifier notifies listeners while building,
    // the widget is trying to rebuild itself during the build phase.
    await Future.delayed(const Duration(seconds: 1));
    widget.ref.read(mapProvider).fetchFieldData();
  }

  @override
  Widget build(BuildContext context) {
    return const MapPage();
  }
}
