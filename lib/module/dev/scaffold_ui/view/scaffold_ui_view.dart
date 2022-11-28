import 'package:flutter/material.dart';
import '../controller/scaffold_ui_controller.dart';

class ScaffoldUiView extends StatefulWidget {
  const ScaffoldUiView({Key? key}) : super(key: key);

  Widget build(context, ScaffoldUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ScaffoldUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ScaffoldUiView> createState() => ScaffoldUiController();
}
