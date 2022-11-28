import 'package:flutter/material.dart';

import '../controller/button_ui_controller.dart';

class ButtonUiView extends StatefulWidget {
  const ButtonUiView({Key? key}) : super(key: key);

  Widget build(context, ButtonUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonUi"),
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
  State<ButtonUiView> createState() => ButtonUiController();
}