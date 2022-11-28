import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/dialog_ui_view.dart';

class DialogUiController extends State<DialogUiView> implements MvcController {
  static late DialogUiController instance;
  late DialogUiView view;

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