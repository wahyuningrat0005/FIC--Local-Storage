
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class PosProductListView extends StatefulWidget {
  const PosProductListView({Key? key}) : super(key: key);

  Widget build(context, PosProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosProductList"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const PosProductFormView());
          controller.update();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //ALT+SHIFT+V
            Expanded(
              child: ListView.builder(
                itemCount: ProductService.products.length,
                itemBuilder: (context, index) {
                  var item = ProductService.products[index];
                  return PosProductItem(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<PosProductListView> createState() => PosProductListController();
}
