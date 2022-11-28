import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ThemeView extends StatefulWidget {
  const ThemeView({Key? key}) : super(key: key);

  Widget build(context, ThemeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ThemeView> createState() => ThemeController();
}
