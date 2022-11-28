import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/hyper_ui_view.dart';

class HyperUiController extends State<HyperUiView> implements MvcController {
  static late HyperUiController instance;
  late HyperUiView view;

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