import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HttpExampleView extends StatefulWidget {
  const HttpExampleView({Key? key}) : super(key: key);

  Widget build(context, HttpExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpExample"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Generate Dummy"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.generateDummy(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Get.to(const HttpFormExampleView());
          ExListView.reloadAll();
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ExListView(
              shrinkWrap: true,
              futureBuilder: (page) async {
                var response = await Dio().get(
                  "http://localhost:8080/dynamic-api/customers",
                  options: Options(
                    headers: {
                      "Content-Type": "application/json",
                    },
                  ),
                );
                return response;
              },
              builder: (index, item) {
                //alt+shift+d
                return InkWell(
                  onTap: () async {
                    await Get.to(HttpFormExampleView(
                      item: item,
                    ));
                    ExListView.reloadAll();
                  },
                  child: Dismissible(
                    key: UniqueKey(),
                    onDismissed: (detail) {},
                    confirmDismiss: (direction) async {
                      bool confirm = false;
                      await showDialog<void>(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirm'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text(
                                      'Are you sure you want to delete this item?'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[600],
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No"),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                ),
                                onPressed: () {
                                  confirm = true;
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        },
                      );
                      if (confirm) {
                        var id = item["id"];
                        controller.deleteItem(id);
                        return Future.value(true);
                      }
                      return Future.value(false);
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("${item["customer_name"]}"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${item["address"]}"),
                            Text("${item["tiktok"] ?? "-"}"),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HttpExampleView> createState() => HttpExampleController();
}
