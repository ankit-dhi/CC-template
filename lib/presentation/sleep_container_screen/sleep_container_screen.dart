import 'bloc/sleep_container_bloc.dart';
import 'models/sleep_container_model.dart';
import 'package:ankit_s_application113/core/app_export.dart';
import 'package:ankit_s_application113/presentation/sleep_tab_container_page/sleep_tab_container_page.dart';
import 'package:ankit_s_application113/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SleepContainerScreen extends StatelessWidget {
  SleepContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SleepContainerBloc>(
        create: (context) => SleepContainerBloc(
            SleepContainerState(sleepContainerModelObj: SleepContainerModel()))
          ..add(SleepContainerInitialEvent()),
        child: SleepContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SleepContainerBloc, SleepContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.sleepTabContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.sleepTabContainerPage;
      case BottomBarEnum.Meditate:
        return "/";
      case BottomBarEnum.Music:
        return "/";
      case BottomBarEnum.Afsar:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.sleepTabContainerPage:
        return SleepTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
