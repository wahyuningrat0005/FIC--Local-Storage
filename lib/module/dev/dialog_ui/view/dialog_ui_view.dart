import 'package:flutter/material.dart';

import '../controller/dialog_ui_controller.dart';

class DialogUiView extends StatefulWidget {
  const DialogUiView({Key? key}) : super(key: key);

  Widget build(context, DialogUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DialogUi"),
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
  State<DialogUiView> createState() => DialogUiController();
}