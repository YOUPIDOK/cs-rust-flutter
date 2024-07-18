import 'package:app/src/constants/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapBox extends StatelessWidget {
  final MapOptions? mapOptions;
  final CameraOptions? cameraOptions;
  final String? styleUri;
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;
  final void Function(MapboxMap)? onMapCreated;
  final void Function(MapLoadedEventData)? onMapLoadedListener;
  final void Function(CameraChangedEventData)? onCameraChangeListener;
  final void Function(MapContentGestureContext)? onTapListener;

  const MapBox(
      {super.key,
      this.mapOptions,
      this.cameraOptions,
      this.styleUri,
      this.gestureRecognizers,
      this.onMapCreated,
      this.onMapLoadedListener,
      this.onCameraChangeListener,
      this.onTapListener});

  @override
  Widget build(BuildContext context) {
    MapboxOptions.setAccessToken(mapboxPublicAccessToken);

    return mapboxPublicAccessToken.isEmpty || mapboxPublicAccessToken.contains("YOUR_TOKEN")
        ? buildAccessTokenWarning(context)
        : MapWidget(
            //avoid flickers on android
            androidHostingMode: AndroidPlatformViewHostingMode.TLHC_VD,
            cameraOptions: cameraOptions,
            mapOptions: mapOptions,
            // styleUri: styleUri ?? "mapbox://styles/$mapBoxStyleId",
            gestureRecognizers: gestureRecognizers,
            onMapLoadedListener: onMapLoadedListener,
            onMapCreated: (mapboxMap) {
              mapboxMap.compass.updateSettings(CompassSettings(enabled: false));
              mapboxMap.logo.updateSettings(LogoSettings(marginLeft: -1000));
              mapboxMap.scaleBar.updateSettings(ScaleBarSettings(enabled: false));
              mapboxMap.attribution.updateSettings(AttributionSettings(marginLeft: -1000));

              if (onMapCreated != null) onMapCreated!(mapboxMap);
            },
            onTapListener: onTapListener,
            onCameraChangeListener: onCameraChangeListener,
          );
  }

  Widget buildAccessTokenWarning(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.error,
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Please pass in your access token with",
            "--dart-define=ACCESS_TOKEN=ADD_YOUR_TOKEN_HERE",
            "passed into flutter run or add it to args in vscode's launch.json",
          ]
              .map((text) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
