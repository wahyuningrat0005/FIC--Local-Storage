import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class UiDailiyTodoListView extends StatefulWidget {
  const UiDailiyTodoListView({Key? key}) : super(key: key);

  Widget build(context, UiDailiyTodoListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Row(
                children: const [
                  Icon(
                    Icons.chevron_left,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            const Text("Back"),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Badge(
              badgeContent: const Text("2"),
              child: const Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "22 November",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Add Task",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: infoColor,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 30.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 24 * 60,
                child: Stack(
                  children: [
                    ...List.generate(
                      24,
                      (index) {
                        var hour = "${index.toString().padLeft(2, "0")}:00";
                        return Positioned(
                          left: 0,
                          right: 0,
                          top: index * 60,
                          child: Container(
                            height: 60.0,
                            // color: index % 2 == 0
                            //     ? Colors.grey[900]
                            //     : Colors.grey[800],
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 1.0,
                                  color: Colors.grey[800]!,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  hour,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ...List.generate(
                      controller.todoList.length,
                      (index) {
                        var item = controller.todoList[index];
                        TimeOfDay startAt = item["start_at"];
                        TimeOfDay endAt = item["end_at"];

                        var heightInDpi = startAt.differentInMinutes(endAt);

                        var startHour =
                            "${startAt.hour.toString().padLeft(2, "0")}:${startAt.minute.toString().padLeft(2, "0")}";
                        var endHour =
                            "${endAt.hour.toString().padLeft(2, "0")}:${endAt.minute.toString().padLeft(2, "0")}";
                        var range = "$startHour - $endHour";

                        return Positioned(
                          left: 60,
                          top: startAt.hour * 60,
                          // height: double.parse("$heightInDpi"),
                          height: double.parse("$heightInDpi"),

                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: item["color"],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: SingleChildScrollView(
                              controller: ScrollController(),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          item["icon"],
                                          color: Colors.red,
                                          size: 12,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${item["task_name"]}",
                                              style: const TextStyle(
                                                fontSize: 10.0,
                                              ),
                                            ),
                                            Text(
                                              range,
                                              style: const TextStyle(
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UiDailiyTodoListView> createState() => UiDailiyTodoListController();
}

extension TimeOfDayExtension on TimeOfDay {
  int differentInMinutes(TimeOfDay endAt) {
    var startAt = this;

    DateTime now = DateTime.now();
    DateTime startDate = DateTime(
      now.year,
      now.month,
      now.day,
      startAt.hour,
      startAt.minute,
    );
    DateTime endDate = DateTime(
      now.year,
      now.month,
      now.day,
      endAt.hour,
      endAt.minute,
    );

    return endDate.difference(startDate).inMinutes;
  }
}
