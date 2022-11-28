import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/detail_ui_view.dart';

class DetailUiController extends State<DetailUiView> implements MvcController {
  static late DetailUiController instance;
  late DetailUiView view;

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