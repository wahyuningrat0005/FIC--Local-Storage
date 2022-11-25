import 'package:example/service/order_service.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_order_view.dart';

class PosOrderController extends State<PosOrderView> implements MvcController {
  static late PosOrderController instance;
  late PosOrderView view;

  @override
  void initState() {
    instance = this;
    OrderService.init();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
