import 'package:flutter/material.dart';
import 'package:example/core.dart';

/*
! Seputar Flutter
! State Management & Form
*/
class LtsmScrollView extends StatefulWidget {
  const LtsmScrollView({Key? key}) : super(key: key);

  Widget build(context, LtsmScrollController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmScroll"),
        actions: const [],
      ),
    );
  }

  @override
  State<LtsmScrollView> createState() => LtsmScrollController();
}
