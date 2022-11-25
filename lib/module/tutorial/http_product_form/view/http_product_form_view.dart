import 'package:flutter/material.dart';
import 'package:example/core.dart';

class HttpProductFormView extends StatefulWidget {
  final Map? item;
  const HttpProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, HttpProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpProductForm"),
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
                hint: "Product name",
                validator: Validator.required,
                value: controller.productName,
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                hint: "Price",
                validator: Validator.required,
                value: controller.price.toString(),
                onChanged: (value) {
                  controller.price = double.parse(value);
                },
              ),
              QMemoField(
                label: "Description",
                hint: "Your product description",
                validator: Validator.required,
                value: controller.description,
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
  State<HttpProductFormView> createState() => HttpProductFormController();
}
