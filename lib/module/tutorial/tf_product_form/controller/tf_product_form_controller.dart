import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_product_form_view.dart';

class TfProductFormController extends State<TfProductFormView> implements MvcController {
  static late TfProductFormController instance;
  late TfProductFormView view;

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