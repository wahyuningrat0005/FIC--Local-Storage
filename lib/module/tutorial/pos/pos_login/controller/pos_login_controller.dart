import 'package:example/core.dart';
import 'package:flutter/material.dart';



class PosLoginController extends State<PosLoginView> implements MvcController {
  static late PosLoginController instance;
  late PosLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "admin@dev.com";
  String password = "123456";
  doLogin() async {
    if (email == "admin@dev.com" || password == "123456") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PosMainNavigationView()),
      );
    }
  }
}
