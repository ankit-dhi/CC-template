import 'bloc/welcome4_bloc.dart';
import 'models/welcome4_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Welcome4Screen extends StatelessWidget {
  const Welcome4Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Welcome4Bloc>(
        create: (context) =>
            Welcome4Bloc(Welcome4State(welcome4ModelObj: Welcome4Model()))
              ..add(Welcome4InitialEvent()),
        child: Welcome4Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Welcome4Bloc, Welcome4State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 50.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: _buildWelcomeColumn(context)))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.bodyMediumBluegray800,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Section Widget
  Widget _buildWelcomeColumn(BuildContext context) {
    return Column(children: [
      Opacity(
          opacity: 0.75,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Text("lbl_silent".tr,
                    style: CustomTextStyles
                        .titleMediumAirbnbCerealAppWhiteA70001)),
            CustomImageView(
                imagePath: ImageConstant.imgLogoWhiteA70001,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 10.h)),
            Padding(
                padding: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
                child: Text("lbl_moon".tr,
                    style:
                        CustomTextStyles.titleMediumAirbnbCerealAppWhiteA70001))
          ])),
      SizedBox(height: 77.v),
      SizedBox(
          width: 262.h,
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "msg_hi_afsar_welcome2".tr,
                    style: CustomTextStyles.headlineLargeRegular),
                TextSpan(
                    text: "lbl_to_silent_moon".tr,
                    style: theme.textTheme.headlineLarge)
              ]),
              textAlign: TextAlign.center)),
      SizedBox(height: 16.v),
      Container(
          width: 310.h,
          margin: EdgeInsets.only(left: 52.h, right: 50.h),
          child: Text("msg_explore_the_app".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeGray200.copyWith(height: 1.69))),
      SizedBox(height: 34.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
              height: 6.adaptSize,
              width: 6.adaptSize,
              margin: EdgeInsets.only(left: 27.h),
              decoration: BoxDecoration(
                  color: appTheme.indigoA100,
                  borderRadius: BorderRadius.circular(3.h)))),
      SizedBox(height: 5.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(left: 33.h),
              decoration: BoxDecoration(
                  color: appTheme.indigoA100,
                  borderRadius: BorderRadius.circular(6.h)))),
      SizedBox(
          height: 551.v,
          width: double.maxFinite,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                    height: 492.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse133,
                          height: 492.v,
                          width: 414.h,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 422.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse123,
                                        height: 422.v,
                                        width: 414.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.h,
                                                top: 6.v,
                                                right: 30.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTwitter,
                                                      height: 14.v,
                                                      width: 36.h,
                                                      alignment:
                                                          Alignment.centerRight,
                                                      margin: EdgeInsets.only(
                                                          right: 66.h)),
                                                  SizedBox(height: 8.v),
                                                  SizedBox(
                                                      height: 360.v,
                                                      width: 354.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(35
                                                                                .h),
                                                                    decoration: AppDecoration
                                                                        .fillIndigoA
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder177),
                                                                    child: Container(
                                                                        height: 284
                                                                            .adaptSize,
                                                                        width: 284
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color: appTheme.indigoA10003,
                                                                            borderRadius: BorderRadius.circular(142.h))))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgTwitter,
                                                                height: 8.v,
                                                                width: 22.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 23
                                                                            .h))
                                                          ]))
                                                ])))
                                  ])))
                    ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 85.v),
                    decoration: AppDecoration.fillIndigoA10004,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 33.v),
                          _buildGetStartedButton(context)
                        ]))),
            CustomImageView(
                imagePath: ImageConstant.imgGroupIndigoA10004,
                height: 258.v,
                width: 414.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 28.v)),
            CustomImageView(
                imagePath: ImageConstant.imgVector3,
                height: 55.v,
                width: 107.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 65.v)),
            CustomImageView(
                imagePath: ImageConstant.imgVector4,
                height: 24.v,
                width: 41.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.v))
          ]))
    ]);
  }

  /// Navigates to the chooseTopic4Screen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseTopic4Screen,
    );
  }
}
