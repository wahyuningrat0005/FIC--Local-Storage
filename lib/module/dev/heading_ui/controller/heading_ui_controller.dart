import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/heading_ui_view.dart';

class HeadingUiController extends State<HeadingUiView> implements MvcController {
  static late HeadingUiController instance;
  late HeadingUiView view;

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