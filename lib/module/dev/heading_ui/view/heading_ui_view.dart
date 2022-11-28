
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class HeadingUiView extends StatefulWidget {
  const HeadingUiView({Key? key}) : super(key: key);

  Widget build(context, HeadingUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HeadingUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1("Heading 1 - H1"),
              H2("Heading 2 - H2"),
              H3("Heading 3 - H3"),
              H4("Heading 4 - H4"),
              H5("Heading 5 - H5"),
              H6("Heading 6 - H6"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HeadingUiView> createState() => HeadingUiController();
}
