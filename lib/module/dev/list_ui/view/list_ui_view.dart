import 'package:flutter/material.dart';

import '../controller/list_ui_controller.dart';

class ListUiView extends StatefulWidget {
  const ListUiView({Key? key}) : super(key: key);

  Widget build(context, ListUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListUi"),
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
  State<ListUiView> createState() => ListUiController();
}