import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_user_setting_view.dart';

class LsUserSettingController extends State<LsUserSettingView> implements MvcController {
  static late LsUserSettingController instance;
  late LsUserSettingView view;

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