import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_create_pin_controller.dart';

class LsCreatePinView extends StatefulWidget {
  const LsCreatePinView({Key? key}) : super(key: key);

  Widget build(context, LsCreatePinController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsCreatePin"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 140.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) {
                    bool filled = controller.pin.length >= index + 1;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 900),
                      width: filled ? 30 : 16.0,
                      height: filled ? 30 : 16.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: filled ? Colors.yellow : Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
            LayoutBuilder(builder: (context, constraint) {
              var size = constraint.biggest.width / 3;
              return Wrap(
                children: List.generate(
                  9,
                  (index) {
                    var number = index + 1;
                    return InkWell(
                      onTap: () => controller.updatePin(number),
                      child: SizedBox(
                        width: size,
                        height: size,
                        child: Center(
                          child: Text("$number"),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
            ElevatedButton.icon(
              icon: const Icon(Icons.clear),
              label: const Text("Clear"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.pin = "";
                controller.setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LsCreatePinView> createState() => LsCreatePinController();
}
