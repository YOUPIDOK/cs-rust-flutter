import 'package:app/src/common_widgets/map/mapbox.dart';
import 'package:app/src/features/geolocator/data/geolocator_repository.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:app/src/features/toilettes/presentation/toilettes/draggable_scroll_sheet/toilettes_draggable_scroll_sheet.dart';
import 'package:app/src/features/toilettes/presentation/toilettes/toilettes_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class ToilettesScreen extends ConsumerStatefulWidget {
  const ToilettesScreen({super.key});

  @override
  ConsumerState<ToilettesScreen> createState() => _ToilettesScreenState();
}

class _ToilettesScreenState extends ConsumerState<ToilettesScreen> {
  PointAnnotationManager? pointAnnotationManager;
  List<PointAnnotation?> pointsAnnotation = [];
  Map<String, Uint8List> markers = {};
  bool canDisplayMarkers = true;
  // final toilettesFuture = ref.watch(toilettesFutureProvider);

  @override
  Widget build(BuildContext context) {
    // Load Markers when properties change
    ref.listen(toilettesFutureProvider, (_, state) async {
      final toilettes = state.value?.data?.getToilets;

      if (state is! AsyncData || toilettes == null) return;

      final ByteData bytes = await rootBundle.load('assets/symbols/custom-icon.png');
      final Uint8List list = bytes.buffer.asUint8List();
      var options = <PointAnnotationOptions>[];
      for (var toilette in toilettes) {
        debugPrint('Toilette: ${toilette.name}');
        options.add(PointAnnotationOptions(
          geometry: Point(coordinates: Position(toilette.long, toilette.lat)),
          image: list,
          iconSize: 3,
        ));
      }

      while (pointAnnotationManager == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }

      pointAnnotationManager?.createMulti(options);
    });

    return Scaffold(
      body: Stack(
        children: [
          MapBox(
            onMapCreated: _onMapCreated,
            onCameraChangeListener: _onCameraChangeListener,
            onMapLoadedListener: _onMapLoadedListener,
            onTapListener: _onTapListener,
            gestureRecognizers: {
              Factory<EagerGestureRecognizer>(() => EagerGestureRecognizer()),
            },
          ),
          const Positioned.fill(
            child: ToilettesDraggableScrollSheet(),
          )
        ],
      ),
    );
  }

  _onMapCreated(MapboxMap mapboxMap) async {
    ref.read(toilettesNotifierProvider.notifier).setController(mapboxMap);
    pointAnnotationManager = await mapboxMap.annotations.createPointAnnotationManager();
  }

  _onMapLoadedListener(MapLoadedEventData data) async {
    final userPosition = await ref.read(geolocatorRepositoryProvider).determinePosition();

    ref.read(toilettesNotifierProvider.notifier).controllerFlyTo(
          lat: userPosition.latitude,
          lng: userPosition.longitude,
          zoom: 10,
        );
  }

  void _onCameraChangeListener(CameraChangedEventData cameraChangedEventData) async {
    final mapboxMap = ref.read(toilettesNotifierProvider.select((value) => value.controller));
    final camera = await mapboxMap?.getCameraState();

    if (camera == null) return;

    final cameraLat = camera.center.coordinates.lat.toDouble();
    final cameraLng = camera.center.coordinates.lng.toDouble();
    final cameraZoom = camera.zoom;

    final coordinateBounds =
        await mapboxMap?.coordinateBoundsForCamera(CameraOptions(zoom: cameraZoom, center: Point(coordinates: Position(cameraLng, cameraLat))));

    ref.read(toilettesNotifierProvider.notifier).setCamera(lat: cameraLat, lng: cameraLng, zoom: cameraZoom, coordinateBounds: coordinateBounds);
  }

  void _onTapListener(MapContentGestureContext mapContentGestureContext) async {}
}


          /* Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Rechercher une toillette',
                    prefixIcon: Icon(Icons.arrow_back),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                    child: AsyncValueWidget(
                  value: toilettesFuture,
                  data: (res) {
                    final toilettes = res.data?.getToiletProche;
                    if (toilettes != null) {
                      return ListView.builder(
                        itemCount: toilettes.length,
                        itemBuilder: (context, index) {
                          return Text(toilettes[index].name);
                        },
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ))
              ],
            ),
          ) */