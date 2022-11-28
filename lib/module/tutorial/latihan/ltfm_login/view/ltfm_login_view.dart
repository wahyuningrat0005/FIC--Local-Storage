import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmLoginView extends StatefulWidget {
  const LtfmLoginView({Key? key}) : super(key: key);

  Widget build(context, LtfmLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              //! 1. Buat sebuah textfield dengan property berikut:
              // snippet: q_textfield
              // value: admin@demo.com
              // label: Email

              //! 2. Buat sebuah textfield dengan property berikut:
              // snippet: q_password
              // value: 123456
              // label: Password

              //! 3. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmLoginView> createState() => LtfmLoginController();
}
