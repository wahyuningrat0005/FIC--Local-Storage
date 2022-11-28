import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/list_item_ui_view.dart';

class ListItemUiController extends State<ListItemUiView> implements MvcController {
  static late ListItemUiController instance;
  late ListItemUiView view;

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