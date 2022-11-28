import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HttpFormExampleView extends StatefulWidget {
  final Map? item;
  const HttpFormExampleView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, HttpFormExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpFormExample"),
        actions: const [],
      ),
      bottomNavigationBar: Container(
        height: 90.0,
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton.icon(
          icon: const Icon(Icons.save),
          label: const Text("Save"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () => controller.save(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                //body
                QCategoryPicker(
                  items: const [
                    {
                      "label": "Food",
                      "value": "Food",
                      "icon": Icons.abc,
                    },
                    {
                      "label": "Drink",
                      "value": "Drink",
                      "icon": Icons.developer_board,
                    },
                    {
                      "label": "Main Course",
                      "value": "Main Course",
                      "icon": Icons.food_bank,
                    },
                    {
                      "label": "Hard Drink",
                      "value": "Hard Drink",
                      "icon": Icons.no_drinks,
                    }
                  ],
                  onTap: (value) {
                    print("Category: $value");
                  },
                ),
                QTextField(
                  label: "Email",
                  value: "demo@gmail.com",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  hint: "Enter your email",
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "First Name",
                  value: "Deny",
                  hint: "Enter your first name",
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Last Name",
                  value: "OCr",
                  hint: "Enter your last name",
                  onChanged: (value) {},
                ),
                ExTextField(
                  id: "customer_name",
                  label: "Customer Name",
                  value: item?["customer_name"],
                ),
                ExTextArea(
                  id: "address",
                  label: "Address",
                  value: item?["address"],
                ),
                ExTextField(
                  id: "tiktok",
                  label: "Tiktok",
                  value: item?["tiktok"],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HttpFormExampleView> createState() => HttpFormExampleController();
}
