import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/navigation_ui_view.dart';

class NavigationUiController extends State<NavigationUiView> implements MvcController {
  static late NavigationUiController instance;
  late NavigationUiView view;

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