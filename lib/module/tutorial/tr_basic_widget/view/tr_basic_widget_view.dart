import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrBasicWidgetView extends StatefulWidget {
  const TrBasicWidgetView({Key? key}) : super(key: key);

  Widget build(context, TrBasicWidgetController controller) {
    controller.view = this;
    /*
    ! MATERI HARI INI
    Seni membuat ListView di Flutter
    ! 6:35
    */
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.location_city),
                label: const Text("Load Users"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.loadUsers(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.loading) ...[
                const CircularProgressIndicator(),
                const SizedBox(
                  height: 20.0,
                ),
              ],
              ListView.builder(
                itemCount: controller.users.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.users[index];
                  //2. constructor
                  return TrBasicItem(
                    onTap: () {
                      Get.to(TrBasicDetailView(
                        item: item,
                      ));
                    },
                    item: item,
                    index: index,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrBasicWidgetView> createState() => TrBasicWidgetController();
}
