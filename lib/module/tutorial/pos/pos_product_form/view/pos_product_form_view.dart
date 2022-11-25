import 'package:flutter/material.dart';
import 'package:example/core.dart';

class PosProductFormView extends StatefulWidget {
  const PosProductFormView({Key? key}) : super(key: key);

  Widget build(context, PosProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Product name",
                hint: "Your product name",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                hint: "Your product price",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.price = double.parse(value);
                },
              ),
              QMemoField(
                label: "Description",
                hint: "Description",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.description = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PosProductFormView> createState() => PosProductFormController();
}
