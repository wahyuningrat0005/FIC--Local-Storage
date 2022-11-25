import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TfLoginController extends State<TfLoginView> implements MvcController {
  static late TfLoginController instance;
  late TfLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  doLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Berhasil login");
      Get.to(const TfProductListView());
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Gagal login");
    }
  }
}
