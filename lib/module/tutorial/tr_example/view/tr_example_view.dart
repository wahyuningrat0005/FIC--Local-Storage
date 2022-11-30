import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);

  Widget build(context, TrExampleController controller) {
    controller.view = this;

    /*
    ! Perlu banyak latihan
    ! Ngoding itu kayak main gitar
    ! Gak mungkin kita bisa main gitar
    ! Kalo kita cuman baca buku gitar
    ! Dan kita jarang mainin gitar-nya
    ---
    ! 100 jam pertama
    ! 1000 jam pertama
    ! 10000 jam
    ---
    SKILL
    EXPERIENCE
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrExample"),
        actions: [
          IconButton(
            onPressed: () => controller.generate(),
            icon: const Icon(
              Icons.data_array,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder(
              valueListenable: controller.counter,
              builder: (context, counter, _) {
                return Text(
                  "Counter: $counter",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.counter.value++;
                // controller.setState(() {});
              },
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Employees",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "${controller.employeeCount}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.people,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //ALT+SHIFT+V
            Expanded(
              child: ListView.builder(
                itemCount: controller.employeeList.length,
                itemBuilder: (context, index) {
                  var item = controller.employeeList[index];
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (detail) {},
                    confirmDismiss: (direction) async {
                      bool confirm = await showConfirmationDialog();
                      if (confirm) {
                        controller.delete(item);
                        return Future.value(true);
                      }
                      return Future.value(false);
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"],
                          ),
                        ),
                        title: Text("${item["name"]}"),
                        subtitle: Text("${item["email"]}"),
                        trailing: IconButton(
                          onPressed: () => controller.update(item),
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
