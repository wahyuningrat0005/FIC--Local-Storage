import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//1. buat project flutter-nya
//2. jalanin flutterfire configure

/*
product_category
  c-1000
    category_name: "Rokok"
    
products
  p-1000
    product_name
    category
      id: c-1001
      category_name
    price
    description
  p-2000
Collection
  Document
  Document
  Document
  Document

Document

products
  product-1001
  product-1002
  product-1003
*/
class TfRegisterController extends State<TfRegisterView>
    implements MvcController {
  static late TfRegisterController instance;
  late TfRegisterView view;

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
  doRegister() async {
    try {
      print("email: $email");
      print("password: $password");
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.to(const TfProductListView());
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Failed to register!");
    }
  }
}
