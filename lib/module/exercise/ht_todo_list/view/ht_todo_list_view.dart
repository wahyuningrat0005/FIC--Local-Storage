import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ht_todo_list_controller.dart';

class HtTodoListView extends StatefulWidget {
  const HtTodoListView({Key? key}) : super(key: key);

  Widget build(context, HtTodoListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HtTodoList"),
        actions: [
          IconButton(
            onPressed: () => controller.deleteAll(),
            icon: const Icon(
              Icons.delete_sweep,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.addTodo(),
            icon: const Icon(
              Icons.add,
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
                itemCount: controller.todoList.length,
                itemBuilder: (context, index) {
                  var item = controller.todoList[index];
                  return Row(
                    children: [
                      IconButton(
                        onPressed: () => controller.deleteTodo(item),
                        icon: const Icon(
                          Icons.close,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          value: item["done"],
                          title: Text("${item["todo"]}"),
                          onChanged: (value) {
                            controller.updateTodo(item);
                          },
                        ),
                      ),
                    ],
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
  State<HtTodoListView> createState() => HtTodoListController();
}
