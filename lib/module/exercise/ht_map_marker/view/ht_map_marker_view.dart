import 'package:flutter/material.dart';
import 'package:example/core.dart';
import 'package:latlong2/latlong.dart';

class HtMapMarkerView extends StatefulWidget {
  const HtMapMarkerView({Key? key}) : super(key: key);

  Widget build(context, HtMapMarkerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HtMapMarker"),
        actions: [
          IconButton(
            onPressed: () => controller.deleteAll(),
            icon: const Icon(
              Icons.delete_sweep_sharp,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.addMarker(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Expanded(
              child: FlutterMap(
                // mapController: widget.controller,
                options: MapOptions(
                  center: LatLng(
                    -6.175601141102148,
                    106.82737683145356,
                  ),
                  zoom: 16.0,
                  onPositionChanged: (pos, _) {},
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerLayer(
                    markers: controller.markerList,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HtMapMarkerView> createState() => HtMapMarkerController();
}
