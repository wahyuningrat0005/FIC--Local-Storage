import 'package:flutter/material.dart';

import '../controller/avatar_ui_controller.dart';

class AvatarUiView extends StatefulWidget {
  const AvatarUiView({Key? key}) : super(key: key);

  Widget build(context, AvatarUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AvatarUi"),
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
  State<AvatarUiView> createState() => AvatarUiController();
}