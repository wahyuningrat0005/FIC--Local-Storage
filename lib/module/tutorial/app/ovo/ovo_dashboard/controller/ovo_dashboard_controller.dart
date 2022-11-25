import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ovo_dashboard_view.dart';

class OvoDashboardController extends State<OvoDashboardView> implements MvcController {
  static late OvoDashboardController instance;
  late OvoDashboardView view;

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