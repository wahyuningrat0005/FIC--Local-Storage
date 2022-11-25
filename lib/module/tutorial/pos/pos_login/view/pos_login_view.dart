import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/pos_login_controller.dart';

class PosLoginView extends StatefulWidget {
  const PosLoginView({Key? key}) : super(key: key);

  Widget build(context, PosLoginController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(64.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      initialValue: controller.email,
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                      onChanged: (value) {
                        controller.email = value;
                      },
                    ),
                    TextFormField(
                      initialValue: controller.password,
                      maxLength: 20,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                      onChanged: (value) {
                        controller.password = value;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
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
          ],
        ),
      ),
    );
  }

  @override
  State<PosLoginView> createState() => PosLoginController();
}
