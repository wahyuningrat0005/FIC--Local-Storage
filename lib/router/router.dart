import 'package:example/core.dart';
import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
    initialLocation: initialRoute ?? '/dashboard',
    // initialLocation: initialRoute ?? '/dashboard_todo_list',
    redirect: (context, state) {
      return null;
    },
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: Get.shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ThemeEditor.build(builder: (theme) {
            return Theme(
              data: theme,
              child: Container(),
            );
          });
        },
        routes: const <RouteBase>[
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
