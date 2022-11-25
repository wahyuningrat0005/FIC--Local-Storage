import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_theme_view.dart';

class LtsmThemeController extends State<LtsmThemeView> implements MvcController {
  static late LtsmThemeController instance;
  late LtsmThemeView view;

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