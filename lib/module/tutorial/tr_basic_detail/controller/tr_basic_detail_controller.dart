import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tr_basic_detail_view.dart';

class TrBasicDetailController extends State<TrBasicDetailView>
    implements MvcController {
  static late TrBasicDetailController instance;
  late TrBasicDetailView view;
  bool visible = false;
  @override
  void initState() {
    instance = this;
    Future.delayed(const Duration(milliseconds: 900), () {
      visible = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
