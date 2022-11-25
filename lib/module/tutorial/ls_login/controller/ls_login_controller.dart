import 'package:example/core.dart';
import 'package:flutter/material.dart';

class LsLoginController extends State<LsLoginView> implements MvcController {
  static late LsLoginController instance;
  late LsLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "admin@demo.com";
  String password = "123456";
  doLogin() async {
    var response = await Dio().post(
      "http://34.143.153.147:8080/deny/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": email,
        "password": password,
      },
    );
    Map obj = response.data;
    String token = obj["data"]["token"];

    await UserService.save("token", token);
    print("token: $token");

    setState(() {});
  }

  doLogout() async {
    await UserService.save("token", null);
    setState(() {});
  }
}
