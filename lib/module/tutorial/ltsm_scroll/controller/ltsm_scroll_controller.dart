import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_scroll_view.dart';

class LtsmScrollController extends State<LtsmScrollView>
    implements MvcController {
  static late LtsmScrollController instance;
  late LtsmScrollView view;

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
