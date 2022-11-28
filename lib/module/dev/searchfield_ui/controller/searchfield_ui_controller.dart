import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/searchfield_ui_view.dart';

class SearchfieldUiController extends State<SearchfieldUiView> implements MvcController {
  static late SearchfieldUiController instance;
  late SearchfieldUiView view;

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