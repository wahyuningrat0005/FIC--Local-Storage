import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/widget_ui_view.dart';

class WidgetUiController extends State<WidgetUiView> implements MvcController {
  static late WidgetUiController instance;
  late WidgetUiView view;

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