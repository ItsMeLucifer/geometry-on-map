import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geometry_on_map_assignment/main.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:geometry_on_map_assignment/viewmodel/map_view_model.dart';

class MapPage extends ConsumerWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapVM = ref.watch(mapProvider);
    return Scaffold(
      body: Container(
        child: mapVM.fieldFetchStatus == FetchStatus.fetched
            ? _buildMap(context, ref)
            : _buildProgressIndicator(context),
      ),
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildMap(BuildContext context, WidgetRef ref) {
    final mapVM = ref.watch(mapProvider);
    return FlutterMap(
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
        PolygonLayerWidget(
            options: PolygonLayerOptions(polygonCulling: false, polygons: [])
            // polygonCulling: false,
            // polygons: [
            //     Polygon(
            //       points: [LatLng(30, 40), LatLng(20, 50), LatLng(25, 45),],
            //       color: Colors.blue,
            //     ),
            // ],
            ),
      ],
    );
  }
}
