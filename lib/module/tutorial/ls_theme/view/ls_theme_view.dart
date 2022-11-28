
import 'package:flutter/material.dart';
import 'package:example/core.dart';


class LsThemeView extends StatefulWidget {
  const LsThemeView({Key? key}) : super(key: key);

  Widget build(context, LsThemeController controller) {
    controller.view = this;

    return Theme(
      data: ThemeService.theme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("LsTheme"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.color_lens),
                  label: const Text("Light"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.doUpdateTheme(0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.color_lens),
                  label: const Text("Dark"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.doUpdateTheme(1),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.color_lens),
                  label: const Text("Green"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.doUpdateTheme(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LsThemeView> createState() => LsThemeController();
}
