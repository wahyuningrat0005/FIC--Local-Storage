import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_first_time_setup_dashboard_view.dart';

class LsFirstTimeSetupDashboardController extends State<LsFirstTimeSetupDashboardView> implements MvcController {
  static late LsFirstTimeSetupDashboardController instance;
  late LsFirstTimeSetupDashboardView view;

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