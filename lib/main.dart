import 'package:example/core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  await initialize();
  // windows, android, ios
  var path = await getTemporaryDirectory();
  Hive.init(path.path);
  mainStorage = await Hive.openBox('mainStorage');

  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const TrView(),
  ));
}
