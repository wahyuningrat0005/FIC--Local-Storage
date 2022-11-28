import 'package:example/core.dart';
import 'package:flutter/material.dart';

class LsPosSelectTableView extends StatefulWidget {
  const LsPosSelectTableView({Key? key}) : super(key: key);

  @override
  State<LsPosSelectTableView> createState() => _LsPosSelectTableViewState();
}

class _LsPosSelectTableViewState extends State<LsPosSelectTableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pilih meja"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.takeout_dining),
                      label: const Text("Take away"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () async {
                        await showInfoDialog("Kamu memilih untuk Take Away");
                        LsPosWithTableSelectionController.instance.table =
                            "Take Away";
                        Get.back();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.motorcycle),
                      label: const Text("Gojek"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () async {
                        await showInfoDialog(
                            "Order ini dibuat untuk Gojek/Grab!");
                        LsPosWithTableSelectionController.instance.table =
                            "Take Away";
                        Get.back();
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              LayoutBuilder(builder: (context, constraint) {
                var size = (constraint.biggest.width - 30) / 4;
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(22, (index) {
                    var number = index + 1;
                    List usedTables = [10, 11, 12, 2, 3, 19, 20];
                    bool available = !usedTables.contains(number);

                    return InkWell(
                      onTap: () async {
                        if (!available) {
                          showInfoDialog("Meja ini tidak kosong!");
                          return;
                        }

                        await showInfoDialog("Kamu memilih meja $number");
                        LsPosWithTableSelectionController.instance.table =
                            number.toString();
                        Get.back();
                        return;
                      },
                      child: Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                          color: available ? Colors.green : Colors.red,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$number",
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
