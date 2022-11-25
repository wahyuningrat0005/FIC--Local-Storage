import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_product_list_view.dart';

class TfProductListController extends State<TfProductListView> implements MvcController {
  static late TfProductListController instance;
  late TfProductListView view;

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