import 'package:example/module/exercise/ls_pos_with_table_selection/widget/ls_pos_select_table.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsPosWithTableSelectionView extends StatefulWidget {
  const LsPosWithTableSelectionView({Key? key}) : super(key: key);

  Widget build(context, LsPosWithTableSelectionController controller) {
    controller.view = this;
    Faker faker = Faker.instance;

    if (!controller.ready) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("LsPosWithTableSelection"),
        actions: [
          IconButton(
            onPressed: () async {
              mainStorage.delete("orders");
              Get.back();
            },
            icon: const Icon(
              Icons.delete_sweep_outlined,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  var item = controller.productList[index];
                  item["qty"] = item["qty"] ?? 0;

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("${item["product_name"]}"),
                      subtitle: Text("${item["price"]} USD"),
                      trailing: SizedBox(
                        width: 120.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () => controller.decreaseQty(item),
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${item["qty"]}",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () => controller.increaseQty(item),
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.table_bar),
                    label: Text(controller.table.isEmpty
                        ? "Pilih meja"
                        : "#${controller.table}"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () async {
                      await Get.to(const LsPosSelectTableView());
                      controller.setState(() {});
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Total: ${controller.total}",
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 42,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.check),
                label: const Text("Checkout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () => controller.checkout(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LsPosWithTableSelectionView> createState() =>
      LsPosWithTableSelectionController();
}
