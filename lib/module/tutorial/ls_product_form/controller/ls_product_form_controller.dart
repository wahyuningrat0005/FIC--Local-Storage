import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_product_form_view.dart';

class LsProductFormController extends State<LsProductFormView> implements MvcController {
  static late LsProductFormController instance;
  late LsProductFormView view;

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