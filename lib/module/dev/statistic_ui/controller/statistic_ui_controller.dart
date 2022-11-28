import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/statistic_ui_view.dart';

class StatisticUiController extends State<StatisticUiView> implements MvcController {
  static late StatisticUiController instance;
  late StatisticUiView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}