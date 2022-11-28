import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/appbar_ui_view.dart';

class AppbarUiController extends State<AppbarUiView> implements MvcController {
  static late AppbarUiController instance;
  late AppbarUiView view;

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