import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrfmLoginFormView extends StatefulWidget {
  const TrfmLoginFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmLoginFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmLoginForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Name",
                hint: "Name",
                validator: Validator.required,
                value: "John Doe",
                onChanged: (value) => controller.name = value,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.name = Random().nextInt(10000).toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrfmLoginFormView> createState() => TrfmLoginFormController();
}
