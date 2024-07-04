import 'package:flutter/material.dart';
import 'package:mood_diary_app/presentation/tap_container_screen/tap_container_screen.dart';

class AppRoutes {
  static String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const TabContainerScreen(),
  };
}
