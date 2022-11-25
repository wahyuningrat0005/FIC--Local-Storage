import 'package:flutter/material.dart';
import 'package:example/core.dart';

class HttpProductListView extends StatefulWidget {
  const HttpProductListView({Key? key}) : super(key: key);

  Widget build(context, HttpProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpProductList"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.developer_board),
              label: const Text("Generate"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.generateProducts(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const HttpProductFormView());
          await controller.loadProducts();
        },
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
                  return InkWell(
                    onTap: () async {
                      await Get.to(HttpProductFormView(
                        item: item!,
                      ));
                      await controller.loadProducts();
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"] ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                        ),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["price"]}"),
                        trailing: IconButton(
                          onPressed: () => controller.deleteItem(item["id"]),
                          icon: const Icon(
                            Icons.remove,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HttpProductListView> createState() => HttpProductListController();
}
