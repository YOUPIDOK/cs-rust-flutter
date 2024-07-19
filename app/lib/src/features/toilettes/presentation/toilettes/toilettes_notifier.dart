import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toilettes_notifier.g.dart';

class ToilettesNotifierState {
  final MapboxMap? controller;
  final double? cameraLat;
  final double? cameraLng;
  final double? cameraZoom;
  final CoordinateBounds? coordinateBounds;
  final GToilettesData_getToilets? currentToilette;

  ToilettesNotifierState({
    this.controller,
    this.cameraLat,
    this.cameraLng,
    this.cameraZoom,
    this.coordinateBounds,
    this.currentToilette,
  });

  ToilettesNotifierState copyWith(
      {MapboxMap? controller,
      double? cameraLat,
      double? cameraLng,
      double? cameraZoom,
      CoordinateBounds? coordinateBounds,
      GToilettesData_getToilets? currentToilette}) {
    return ToilettesNotifierState(
        controller: controller ?? this.controller,
        cameraLat: cameraLat ?? this.cameraLat,
        cameraLng: cameraLng ?? this.cameraLng,
        cameraZoom: cameraZoom ?? this.cameraZoom,
        coordinateBounds: coordinateBounds ?? this.coordinateBounds,
        currentToilette: currentToilette ?? this.currentToilette);
  }
}

@Riverpod(keepAlive: true)
class ToilettesNotifier extends _$ToilettesNotifier {
  double? _lastZoom;

  @override
  ToilettesNotifierState build() {
    return ToilettesNotifierState();
  }

  Future<void>? controllerFlyTo({double? lat, double? lng, double? zoom}) async {
    state.controller?.flyTo(
        CameraOptions(
            center: Point(coordinates: Position(lng ?? state.cameraLng ?? 0, lat ?? state.cameraLat ?? 0)), zoom: zoom ?? _lastZoom ?? state.cameraZoom ?? 0),
        MapAnimationOptions(duration: 500, startDelay: 0));

    _lastZoom = zoom;
  }

  void setController(MapboxMap? controller) {
    state = state.copyWith(controller: controller);
  }

  void setCamera({double? lat, double? lng, double? zoom, CoordinateBounds? coordinateBounds}) {
    state = state.copyWith(cameraLat: lat, cameraLng: lng, cameraZoom: zoom, coordinateBounds: coordinateBounds);
  }
}
