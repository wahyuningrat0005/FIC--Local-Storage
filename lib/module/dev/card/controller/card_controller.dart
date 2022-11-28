import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/card_view.dart';

class CardController extends State<CardView> implements MvcController {
  static late CardController instance;
  late CardView view;

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