import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsLoginView extends StatefulWidget {
  const LsLoginView({Key? key}) : super(key: key);

  Widget build(context, LsLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsLogin"),
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
                value: controller.email,
                onChanged: (value) {
                  controller.email = value;
                },
              ),
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                value: controller.password,
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
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doLogout(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Token:",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Text(
                "Token: ${UserService.token}",
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LsLoginView> createState() => LsLoginController();
}
