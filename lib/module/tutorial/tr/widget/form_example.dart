import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrFormExample extends StatelessWidget {
  const TrFormExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            icon: const Icon(Icons.app_registration_rounded),
            label: const Text("Form (Reuseable)"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                globalContext,
                MaterialPageRoute(
                  builder: (context) => const FormExampleView(),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: ElevatedButton.icon(
            icon: const Icon(Icons.app_registration_rounded),
            label: const Text("Form"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                globalContext,
                MaterialPageRoute(
                  builder: (context) => const FormExampleNonReuseableView(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
