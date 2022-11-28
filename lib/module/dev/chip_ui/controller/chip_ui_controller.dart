import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/chip_ui_view.dart';

class ChipUiController extends State<ChipUiView> implements MvcController {
  static late ChipUiController instance;
  late ChipUiView view;

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