import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HyperUiView extends StatefulWidget {
  const HyperUiView({Key? key}) : super(key: key);

  Widget build(context, HyperUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HyperUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //body
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExCard(
                      title: "Basic",
                      children: [
                        const ExTextField(
                          id: "email",
                          label: "Email",
                          value: "Leo",
                        ),
                        const ExTextField(
                          id: "password",
                          label: "Password",
                          textFieldType: TextFieldType.password,
                          value: "123456",
                        ),
                        const ExTextArea(
                          id: "memo",
                          label: "Memo",
                          value: null,
                        ),
                        const ExCombo(
                          id: "gender",
                          label: "Gender",
                          items: [
                            {
                              "label": "Male",
                              "value": "Male",
                            },
                            {
                              "label": "Female",
                              "value": "Female",
                            }
                          ],
                          value: "Female",
                        ),
                        const ExCheckBox(
                          id: "my_hobby",
                          label: "My Hobby",
                          items: [
                            {
                              "label": "Coding",
                              "value": "Coding",
                            },
                            {
                              "label": "Afk",
                              "value": "Afk",
                            },
                            {
                              "label": "E-Sport",
                              "value": "E-Sport",
                            }
                          ],
                          value: [
                            "Coding",
                          ],
                        ),
                        ExButton(
                          label: "Login",
                          color: primaryColor,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: ExCard(
                      title: "Advanced",
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: ExDatePicker(
                                id: "birth_date",
                                label: "Birth Date",
                                value: null,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: ExTimePicker(
                                id: "working_hour",
                                label: "Working Hour",
                                value: null,
                              ),
                            ),
                          ],
                        ),
                        const ExImagePicker(
                          id: "photo",
                          label: "Photo",
                        ),
                        const ExLocationPicker(
                          id: "location",
                          label: "Location",
                          latitude: -6.218481065235333,
                          longitude: 106.80254435779423,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HyperUiView> createState() => HyperUiController();
}
