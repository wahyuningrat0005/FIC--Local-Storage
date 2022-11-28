import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/badge_ui_view.dart';

class BadgeUiController extends State<BadgeUiView> implements MvcController {
  static late BadgeUiController instance;
  late BadgeUiView view;

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