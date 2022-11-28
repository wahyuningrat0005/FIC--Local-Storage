import 'dart:math';

import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_product_crud_controller.dart';

class LsProductCrudView extends StatefulWidget {
  const LsProductCrudView({Key? key}) : super(key: key);

  Widget build(context, LsProductCrudController controller) {
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
        title: const Text("LsProductCrud"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.addProduct({
            "photo": "https://i.ibb.co/S32HNjD/no-image.jpg",
            "product_name": faker.commerce.productName(),
            "price": double.parse("${Random().nextInt(200)}"),
          });
        },
        child: const Icon(Icons.add),
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
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("${item["product_name"]}"),
                      subtitle: Text("${item["price"]}"),
                      trailing: Wrap(
                        children: [
                          IconButton(
                            onPressed: () => controller.edit(item),
                            icon: const Icon(
                              Icons.edit,
                              size: 24.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () => controller.delete(item),
                            icon: const Icon(
                              Icons.delete,
                              size: 24.0,
                            ),
                          )
                        ],
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
  State<LsProductCrudView> createState() => LsProductCrudController();
}
