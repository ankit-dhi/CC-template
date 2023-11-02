import 'bloc/welcome_sleep_bloc.dart';
import 'models/welcome_sleep_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_title_image.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomeSleepScreen extends StatelessWidget {
  const WelcomeSleepScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeSleepBloc>(
        create: (context) => WelcomeSleepBloc(
            WelcomeSleepState(welcomeSleepModelObj: WelcomeSleepModel()))
          ..add(WelcomeSleepInitialEvent()),
        child: WelcomeSleepScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<WelcomeSleepBloc, WelcomeSleepState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: _buildAppBar(context),
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgWelcomeSleep),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 38.v),
                      child: Column(children: [
                        Text("lbl_wecome_to_sleep".tr,
                            style: CustomTextStyles.headlineLargeIndigo50),
                        SizedBox(height: 19.v),
                        _buildWelcomeSection(context),
                        SizedBox(height: 44.v),
                        _buildImageSection(context),
                        Spacer(),
                        SizedBox(height: 55.v),
                        _buildGetStartedButton(context)
                      ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 121.v,
        title: Padding(
            padding: EdgeInsets.only(bottom: 25.v),
            child: Column(children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Column(children: [
                      AppbarTitleImage(
                          imagePath: ImageConstant.imgVectorWhiteA700018x9,
                          margin: EdgeInsets.only(left: 23.h, right: 8.h)),
                      SizedBox(height: 22.v),
                      AppbarTitleImage(
                          imagePath: ImageConstant.imgVector4Primarycontainer)
                    ])),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorIndigo400,
                    margin: EdgeInsets.only(top: 34.v, bottom: 21.v)),
                Container(
                    height: 61.17.v,
                    width: 69.95.h,
                    margin: EdgeInsets.only(left: 52.h, bottom: 6.v),
                    child: Stack(alignment: Alignment.bottomLeft, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup6813,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 11.v, right: 19.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLocationBlueGray100,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.fromLTRB(2.h, 9.v, 17.h, 1.v)),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              margin: EdgeInsets.only(left: 19.h, bottom: 11.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(25.h))))
                    ]))
              ])
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVector5,
              margin: EdgeInsets.only(top: 52.v)),
          Padding(
              padding: EdgeInsets.only(left: 21.h, top: 14.v, bottom: 4.v),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Row(children: [
                      AppbarTrailingImage(
                          imagePath: ImageConstant.imgVectorIndigo40014x12,
                          margin: EdgeInsets.only(bottom: 21.v)),
                      AppbarTrailingImage(
                          imagePath: ImageConstant.imgVector4Primarycontainer,
                          margin: EdgeInsets.only(left: 27.h, top: 4.v))
                    ])),
                SizedBox(height: 12.v),
                Container(
                    height: 6.v,
                    width: 8.h,
                    margin: EdgeInsets.only(right: 108.h),
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSearchWhiteA70001,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.center),
                      CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA700016x8,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.center)
                    ])),
                SizedBox(height: 15.v),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgVectorIndigo4006x8,
                    margin: EdgeInsets.only(left: 51.h, right: 57.h))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 50.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector4Primarycontainer,
                  height: 21.v,
                  width: 39.h,
                  margin: EdgeInsets.only(top: 47.v, bottom: 11.v)),
              Expanded(
                  child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child: Text("msg_explore_the_new".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeGray200
                              .copyWith(height: 1.69))))
            ])));
  }

  /// Section Widget
  Widget _buildImageSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 248.v,
            width: 369.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector4Primarycontainer,
                  height: 55.v,
                  width: 108.h,
                  alignment: Alignment.topRight),
              CustomImageView(
                  imagePath: ImageConstant.imgFrameIndigo30001,
                  height: 229.v,
                  width: 369.h,
                  alignment: Alignment.bottomCenter)
            ])));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        buttonTextStyle: CustomTextStyles.bodyMediumGray10003,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the sleepScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sleepScreen,
    );
  }
}
