import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              signInText: "sign up and Sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "choose topic ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Reminders".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "home - Container".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "COURSE Details".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Meditate v2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music V2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "play option ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up and Sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "choose topic ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Reminders".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "home ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "COURSE Details".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Meditate v2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music V2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "play option ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up and Sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "choose topic ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Reminders".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "home ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "COURSE Details".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Meditate v2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music V2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "play option ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up and Sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "choose topic ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Reminders".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "home ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "COURSE Details".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Meditate v2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music V2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "play option ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up and Sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign in".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sign up".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "choose topic ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Reminders".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "home ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "COURSE Details".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Meditate v2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music V2".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "welcome sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "play option ".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "sleep music".tr,
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "music".tr,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String signInText,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                signInText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}