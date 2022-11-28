import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ht_image_galleries_controller.dart';

class HtImageGalleriesView extends StatefulWidget {
  const HtImageGalleriesView({Key? key}) : super(key: key);

  Widget build(context, HtImageGalleriesController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HtImageGalleries"),
        actions: [
          IconButton(
            onPressed: () => controller.deleteAll(),
            icon: const Icon(
              Icons.delete_sweep_rounded,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.uploadImage(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Image Count",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "${controller.imageGalleries.length}",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.upload),
                        label: const Text(
                          "Upload 1\n(All Platform)",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: () => controller.doUploadAllPlatform(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.upload),
                        label: const Text(
                          "Upload 2\n(Android,IOS,Web)",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: () => controller.doUploadAndroidIosAndWeb(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              LayoutBuilder(builder: (context, constraint) {
                var size = (constraint.biggest.width - 30) / 4;
                return Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: List.generate(
                    controller.imageGalleries.length,
                    (index) {
                      var item = controller.imageGalleries[index];
                      return Container(
                        height: size,
                        width: size,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              item["photo"],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HtImageGalleriesView> createState() => HtImageGalleriesController();
}
