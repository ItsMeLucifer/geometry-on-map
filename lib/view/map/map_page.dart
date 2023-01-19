import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geometry_on_map_assignment/main.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class MapPage extends ConsumerWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapVM = ref.watch(mapProvider);
    return Scaffold(
      body: FlutterMap(
        mapController: mapVM.mapController,
        options: mapVM.mapOptions,
        children: [
          TileLayerWidget(
            options: TileLayerOptions(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.assignment.geometry_on_map',
              retinaMode: MediaQuery.of(context).devicePixelRatio > 1.0,
            ),
          ),
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              maxClusterRadius: 80,
              size: const Size(40, 40),
              markers: [],
              polygonOptions: const PolygonOptions(
                borderColor: Colors.redAccent,
                borderStrokeWidth: 3,
              ),
              builder: (context, markers) {
                return FloatingActionButton(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  onPressed: null,
                  child: Text(
                    markers.length.toString(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
