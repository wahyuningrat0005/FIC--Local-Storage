import 'package:example/core.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class FormUISwitchView extends StatelessWidget {
  const FormUISwitchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExCard(
      title: "Switch",
      children: [
        Row(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                var validation = _formKey.currentState!.validate();
                print(validation);
              },
            ),
            const SizedBox(
              width: 20.0,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Reset"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                _formKey.currentState!.reset();
              },
            ),
          ],
        ),
        Form(
          key: _formKey,
          child: Column(
            children: const [],
          ),
        ),
      ],
    );
  }
}
