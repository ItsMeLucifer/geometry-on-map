import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geometry_on_map_assignment/common/debug_utils.dart';
import 'package:geometry_on_map_assignment/main.dart';
import 'package:geometry_on_map_assignment/model/field.dart';

class MapPage extends ConsumerWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        child: _buildMap(context, ref),
      ),
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
            tileProvider: NetworkTileProvider(),
          ),
        ),
        _buildPolygonLayer(context, ref),
      ],
    );
  }

  /// A `FutureBuilder`, which returns a `PolygonLayerWidget`
  /// with polygons created from the geometry of the `Field` object.
  ///
  /// The field object is obtained by calling
  /// the ```mapVM.fetchFieldData()``` method.
  Widget _buildPolygonLayer(BuildContext context, WidgetRef ref) {
    final mapVM = ref.read(mapProvider);
    return FutureBuilder<Field>(
      future: mapVM.fetchFieldData(),
      builder: ((context, snapshot) {
        if (snapshot.hasError) {
          DebugUtils.printError(snapshot.error.toString());
        }

        return PolygonLayerWidget(
          options: PolygonLayerOptions(
            polygonCulling: true,
            polygons: _getPolygonsFromSnapshot(context, snapshot: snapshot),
          ),
        );
      }),
    );
  }

  List<Polygon> _getPolygonsFromSnapshot(
    BuildContext context, {
    required AsyncSnapshot<Field> snapshot,
  }) {
    if (!snapshot.hasData || snapshot.data == null) {
      return [];
    }

    return snapshot.data!
        .getCoordinates()
        .map(
          (part) => Polygon(
            points: part,
            color: Theme.of(context).colorScheme.outline,
            borderColor: Theme.of(context).colorScheme.outline,
            borderStrokeWidth: 4.0,
            label: snapshot.data!.id.toString(),
            labelStyle: Theme.of(context).textTheme.bodyMedium!,
          ),
        )
        .toList();
  }
}
