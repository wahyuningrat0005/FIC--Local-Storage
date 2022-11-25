import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tk_dashboard_view.dart';

class TkDashboardController extends State<TkDashboardView> implements MvcController {
  static late TkDashboardController instance;
  late TkDashboardView view;

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