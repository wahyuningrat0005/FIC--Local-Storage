import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tutorial_extension_view.dart';

class TutorialExtensionController extends State<TutorialExtensionView> implements MvcController {
  static late TutorialExtensionController instance;
  late TutorialExtensionView view;

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