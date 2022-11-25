import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_theme_controller.dart';

class LtsmThemeView extends StatefulWidget {
  const LtsmThemeView({Key? key}) : super(key: key);

  Widget build(context, LtsmThemeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmTheme"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmThemeView> createState() => LtsmThemeController();
}