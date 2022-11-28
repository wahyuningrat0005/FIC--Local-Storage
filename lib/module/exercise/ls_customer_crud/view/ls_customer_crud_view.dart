import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_customer_crud_controller.dart';

class LsCustomerCrudView extends StatefulWidget {
  const LsCustomerCrudView({Key? key}) : super(key: key);

  Widget build(context, LsCustomerCrudController controller) {
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
        title: const Text("LsCustomerCrud"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.addCustomer({
            "photo": "https://i.ibb.co/S32HNjD/no-image.jpg",
            "customer_name": faker.name.firstName(),
            "email": faker.internet.email(),
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
                itemCount: controller.customerList.length,
                itemBuilder: (context, index) {
                  var item = controller.customerList[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("${item["customer_name"]}"),
                      subtitle: Text("${item["email"]}"),
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
  State<LsCustomerCrudView> createState() => LsCustomerCrudController();
}
