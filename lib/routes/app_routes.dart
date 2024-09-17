import 'package:flutter/material.dart';
import 'package:ankit_s_application113/presentation/sleep_container_screen/sleep_container_screen.dart';
import 'package:ankit_s_application113/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String sleepPage = '/sleep_page';

  static const String sleepTabContainerPage = '/sleep_tab_container_page';

  static const String sleepContainerScreen = '/sleep_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        sleepContainerScreen: SleepContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SleepContainerScreen.builder
      };
}
