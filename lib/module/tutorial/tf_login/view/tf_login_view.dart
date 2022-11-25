import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfLoginView extends StatefulWidget {
  const TfLoginView({Key? key}) : super(key: key);

  Widget build(context, TfLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                hint: "Your email",
                validator: Validator.email,
                value: "",
                onChanged: (value) {
                  controller.email = value;
                },
              ),
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.password = value;
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doLogin(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TfLoginView> createState() => TfLoginController();
}
