import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_product_form_controller.dart';

class LsProductFormView extends StatefulWidget {
  const LsProductFormView({Key? key}) : super(key: key);

  Widget build(context, LsProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsProductForm"),
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
  State<LsProductFormView> createState() => LsProductFormController();
}