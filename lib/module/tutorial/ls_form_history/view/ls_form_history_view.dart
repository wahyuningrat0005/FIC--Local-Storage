
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsFormHistoryView extends StatefulWidget {
  const LsFormHistoryView({Key? key}) : super(key: key);

  Widget build(context, LsFormHistoryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsFormHistory"),
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
                value: FormHistoryService.name,
                onChanged: (value) async {
                  controller.name = value;
                  controller.saveHistory();
                },
              ),
              QMemoField(
                label: "Address",
                hint: "Your addresses",
                validator: Validator.required,
                value: FormHistoryService.address,
                onChanged: (value) async {
                  controller.address = value;
                  controller.saveHistory();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LsFormHistoryView> createState() => LsFormHistoryController();
}
