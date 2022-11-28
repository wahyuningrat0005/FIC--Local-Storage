import 'package:example/core.dart';
import 'package:flutter/material.dart';



class PosMainNavigationController extends State<PosMainNavigationView>
    implements MvcController {
  static late PosMainNavigationController instance;
  late PosMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PosLoginView()),
    );
  }
}
