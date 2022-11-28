import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/style_guide_view.dart';

class StyleGuideController extends State<StyleGuideView> implements MvcController {
  static late StyleGuideController instance;
  late StyleGuideView view;

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