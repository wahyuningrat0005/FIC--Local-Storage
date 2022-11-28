import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/avatar_ui_view.dart';

class AvatarUiController extends State<AvatarUiView> implements MvcController {
  static late AvatarUiController instance;
  late AvatarUiView view;

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