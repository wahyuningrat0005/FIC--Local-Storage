import 'package:example/shared/widget/card/card.dart';
import 'package:flutter/material.dart';

class FormUITextfieldView extends StatelessWidget {
  const FormUITextfieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExCard(
      title: "Textfield",
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: TextFormField(
            initialValue: 'admin@gmail.com',
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
            onChanged: (value) {},
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: TextFormField(
            initialValue: '123456',
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
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
