import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/form_ui_view.dart';

class FormUiController extends State<FormUiView> implements MvcController {
  static late FormUiController instance;
  late FormUiView view;

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