import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ui_dailiy_todo_list_view.dart';

class UiDailiyTodoListController extends State<UiDailiyTodoListView>
    implements MvcController {
  static late UiDailiyTodoListController instance;
  late UiDailiyTodoListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List todoList = [
    {
      "task_name": "Meeting 1",
      "start_at": const TimeOfDay(hour: 6, minute: 30),
      "end_at": const TimeOfDay(hour: 10, minute: 0),
      "color": Colors.purple,
      "icon": Icons.camera,
    },
    {
      "task_name": "Meeting 2",
      "start_at": const TimeOfDay(hour: 11, minute: 0),
      "end_at": const TimeOfDay(hour: 12, minute: 0),
      "color": Colors.orange,
      "icon": Icons.book,
    },
    {
      "task_name": "Meeting 3",
      "start_at": const TimeOfDay(hour: 13, minute: 0),
      "end_at": const TimeOfDay(hour: 14, minute: 30),
      "color": Colors.red,
      "icon": Icons.laptop,
    },
    {
      "task_name": "Meeting 4",
      "start_at": const TimeOfDay(hour: 15, minute: 0),
      "end_at": const TimeOfDay(hour: 16, minute: 45),
      "color": Colors.brown,
      "icon": Icons.person,
    },
    {
      "task_name": "Meeting 5",
      "start_at": const TimeOfDay(hour: 17, minute: 0),
      "end_at": const TimeOfDay(hour: 23, minute: 0),
      "color": Colors.pink,
      "icon": Icons.verified,
    }
  ];
}
