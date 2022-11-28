import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/scaffold_ui_view.dart';

class ScaffoldUiController extends State<ScaffoldUiView> implements MvcController {
  static late ScaffoldUiController instance;
  late ScaffoldUiView view;

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