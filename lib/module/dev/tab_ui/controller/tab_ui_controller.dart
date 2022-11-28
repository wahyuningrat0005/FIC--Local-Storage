import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tab_ui_view.dart';

class TabUiController extends State<TabUiView> implements MvcController {
  static late TabUiController instance;
  late TabUiView view;

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