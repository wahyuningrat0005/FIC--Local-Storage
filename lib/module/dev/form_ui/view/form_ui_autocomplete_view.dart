import 'package:example/shared/widget/card/card.dart';
import 'package:flutter/material.dart';

class FormUIAutocompleteView extends StatelessWidget {
  const FormUIAutocompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExCard(
      title: "Autocomplete",
      children: [
        //Autocomplete Basic
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: LayoutBuilder(builder: (context, constraints) {
            List<String> items = <String>[
              'Angela',
              'Ardy',
              'Fizfat',
              'Dita',
              'Rimuru',
              'Deny',
              'John',
              'Roy',
            ];

            return Autocomplete<String>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: (text) => onFieldSubmitted(),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: "Let's start with some characters",
                  ),
                );
              },
              initialValue: const TextEditingValue(
                text: "Roy",
              ),
              onSelected: (String value) {
                //selected value
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return items.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
            );
          }),
        ),
        //autocomplete people
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: LayoutBuilder(builder: (context, constraints) {
            List<Map> items = <Map>[
              {
                "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
                "label": "John Doe",
                "info": "Programmer"
              },
              {
                "photo":
                    "https://i.ibb.co/5v5RLKr/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                "label": "Renata",
                "info": "System Analyst"
              },
              {
                "photo":
                    "https://i.ibb.co/mR8PJCz/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                "label": "Kayla",
                "info": "Test Engineer"
              }
            ];

            return Autocomplete<Map>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: (text) => onFieldSubmitted(),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: "Let's start with some characters",
                  ),
                );
              },
              initialValue: TextEditingValue(
                text: items.first["label"],
              ),
              onSelected: (Map value) {
                //selected value
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<Map>.empty();
                }
                return items.where((Map option) {
                  return option["label"]
                      .toString()
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              displayStringForOption: (option) {
                return option["label"];
              },
              optionsViewBuilder: (context, onSelected, options) => Align(
                alignment: Alignment.topLeft,
                child: Material(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(4.0),
                    ),
                  ),
                  child: Container(
                    width: constraints.biggest.width,
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Wrap(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey[300]!,
                            ),
                          ),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: options.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              bool selected =
                                  AutocompleteHighlightedOption.of(context) ==
                                      index;
                              Map option = options.elementAt(index);

                              return InkWell(
                                onTap: () => onSelected(option),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: selected
                                        ? Theme.of(context).focusColor
                                        : null,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        index == 0 ? 12 : 0,
                                      ),
                                      topRight: Radius.circular(
                                        index == 0 ? 12 : 0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        index == options.length - 1 ? 12 : 0.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        index == options.length - 1 ? 12 : 0.0,
                                      ),
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        option["photo"],
                                      ),
                                    ),
                                    title: Text("${option["label"]}"),
                                    subtitle: Text("${option["info"]}"),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        //Autocomplete Radius?
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: LayoutBuilder(builder: (context, constraints) {
            List<String> items = <String>[
              'Angela',
              'Ardy',
              'Fizfat',
              'Dita',
              'Rimuru',
              'Deny',
              'John',
              'Roy',
            ];

            return Autocomplete<String>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: (text) => onFieldSubmitted(),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: "Let's start with some characters",
                  ),
                );
              },
              initialValue: const TextEditingValue(
                text: "Rosita",
              ),
              onSelected: (String value) {
                //selected value
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return items.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
              optionsViewBuilder: (context, onSelected, options) => Align(
                alignment: Alignment.topLeft,
                child: Material(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(4.0),
                    ),
                  ),
                  child: Container(
                    width: constraints.biggest.width,
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Wrap(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey[300]!,
                            ),
                          ),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: options.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              bool selected =
                                  AutocompleteHighlightedOption.of(context) ==
                                      index;
                              String option = options.elementAt(index);
                              return InkWell(
                                onTap: () => onSelected(option),
                                child: Container(
                                  height: 50.0,
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: selected
                                        ? Theme.of(context).focusColor
                                        : null,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        index == 0 ? 12 : 0,
                                      ),
                                      topRight: Radius.circular(
                                        index == 0 ? 12 : 0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        index == options.length - 1 ? 12 : 0.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        index == options.length - 1 ? 12 : 0.0,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        option,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
