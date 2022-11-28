import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tr_basic_widget_view.dart';

class TrBasicWidgetController extends State<TrBasicWidgetView>
    implements MvcController {
  static late TrBasicWidgetController instance;
  late TrBasicWidgetView view;

  late Timer timer;
  @override
  void initState() {
    instance = this;
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      animated = !animated;
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool animated = false;

  List users = [];
  bool loading = false;
  loadUsers() async {
    loading = true;
    users = [];
    setState(() {});

    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    // await Future.delayed(const Duration(seconds: 2));

    Map obj = response.data;
    print(obj);
    users = obj["data"];
    loading = false;
    setState(() {});
  }
}
