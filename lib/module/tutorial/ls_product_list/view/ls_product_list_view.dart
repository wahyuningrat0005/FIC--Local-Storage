
import 'package:flutter/material.dart';
import 'package:example/core.dart';


class LsProductListView extends StatefulWidget {
  const LsProductListView({Key? key}) : super(key: key);

  Widget build(context, LsProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsProductList"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.add(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //alt+shift+V
              ListView.builder(
                itemCount: LocalProductService.products.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = LocalProductService.products[index];
                  return InkWell(
                    onTap: () => controller.delete(item),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"],
                          ),
                        ),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["price"]}"),
                        trailing: IconButton(
                          onPressed: () => controller.update(index, item),
                          icon: const Icon(
                            Icons.edit,
                            size: 24.0,
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
      ),
    );
  }

  @override
  State<LsProductListView> createState() => LsProductListController();
}
