import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/tf_product_form_controller.dart';

class TfProductFormView extends StatefulWidget {
  const TfProductFormView({Key? key}) : super(key: key);

  Widget build(context, TfProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfProductForm"),
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
  State<TfProductFormView> createState() => TfProductFormController();
}