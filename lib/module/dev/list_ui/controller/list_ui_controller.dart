import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/list_ui_view.dart';

class ListUiController extends State<ListUiView> implements MvcController {
  static late ListUiController instance;
  late ListUiView view;

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