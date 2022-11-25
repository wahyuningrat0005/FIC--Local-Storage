import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/pos_order_list_controller.dart';

class PosOrderListView extends StatefulWidget {
  const PosOrderListView({Key? key}) : super(key: key);

  Widget build(context, PosOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosOrderList"),
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
  State<PosOrderListView> createState() => PosOrderListController();
}