import '../sleep1_screen/widgets/sleep2_item_widget.dart';
import '../sleep1_screen/widgets/sleep3_item_widget.dart';
import 'bloc/sleep1_bloc.dart';
import 'models/sleep1_model.dart';
import 'models/sleep2_item_model.dart';
import 'models/sleep3_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/presentation/home_page/home_page.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_bottom_bar.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Sleep1Screen extends StatelessWidget {
  Sleep1Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Sleep1Bloc>(
      create: (context) => Sleep1Bloc(Sleep1State(
        sleep1ModelObj: Sleep1Model(),
      ))
        ..add(Sleep1InitialEvent()),
      child: Sleep1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSleepStories(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 29.v),
                    _buildSTART1(context),
                    SizedBox(height: 20.v),
                    _buildSleep(context),
                    SizedBox(height: 19.v),
                    _buildWidget(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSleepStories(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 255.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 4.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup597,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 62.v),
                      child: Text(
                        "lbl_sleep_stories".tr,
                        style: CustomTextStyles.headlineMediumIndigo50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 276.h,
                      margin: EdgeInsets.only(bottom: 94.v),
                      child: Text(
                        "msg_soothing_bedtime".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeGray200.copyWith(
                          height: 1.35,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar(
                            height: 60.v,
                            leadingWidth: 67.h,
                            leading: CustomImageView(
                              imagePath: ImageConstant.imgLocationBlueGray100,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              margin: EdgeInsets.only(
                                top: 9.v,
                                right: 17.h,
                              ),
                            ),
                            title: Container(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              margin: EdgeInsets.only(
                                left: 17.h,
                                bottom: 9.v,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(
                                  25.h,
                                ),
                              ),
                            ),
                            actions: [
                              AppbarTrailingImage(
                                imagePath:
                                    ImageConstant.imgVectorIndigo40014x12,
                                margin:
                                    EdgeInsets.fromLTRB(42.h, 16.v, 42.h, 29.v),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(right: 19.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorGray50,
                                  height: 14.v,
                                  width: 12.h,
                                  margin: EdgeInsets.only(top: 2.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSearchWhiteA70001,
                                  height: 6.v,
                                  width: 8.h,
                                  margin: EdgeInsets.only(
                                    left: 343.h,
                                    bottom: 10.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo4006x8,
                            height: 6.v,
                            width: 8.h,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 14.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo40014x12,
                            height: 10.v,
                            width: 8.h,
                            margin: EdgeInsets.only(left: 14.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo40014x12,
                            height: 10.v,
                            width: 8.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 281.v,
              child: BlocSelector<Sleep1Bloc, Sleep1State, Sleep1Model?>(
                selector: (state) => state.sleep1ModelObj,
                builder: (context, sleep1ModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 189.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 20.h,
                      );
                    },
                    itemCount: sleep1ModelObj?.sleep2ItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      Sleep2ItemModel model =
                          sleep1ModelObj?.sleep2ItemList[index] ??
                              Sleep2ItemModel();
                      return Sleep2ItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgMaskGroup233x373,
      height: 233.v,
      width: 373.h,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildIconButton(BuildContext context) {
    return CustomIconButton(
      height: 29.v,
      width: 30.h,
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup6821,
      ),
    );
  }

  /// Section Widget
  Widget _buildSTART(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 70.h,
      text: "lbl_start".tr,
      margin: EdgeInsets.only(right: 93.h),
      buttonStyle: CustomButtonStyles.fillGrayTL17,
      buttonTextStyle: CustomTextStyles.bodySmallBluegray800,
    );
  }

  /// Section Widget
  Widget _buildSTART1(BuildContext context) {
    return SizedBox(
      height: 233.v,
      width: 373.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildImage(context),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 233.v,
              width: 373.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup1,
                    height: 233.v,
                    width: 373.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 10.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 29.v,
                              width: 30.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  _buildIconButton(context),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgExclude,
                                    height: 8.v,
                                    width: 12.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                      right: 7.h,
                                      bottom: 8.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Text(
                            "lbl_the_ocean_moon".tr,
                            style: CustomTextStyles
                                .displaySmallGaramondPremierProAmber100,
                          ),
                          SizedBox(height: 7.v),
                          Container(
                            width: 209.h,
                            margin: EdgeInsets.only(right: 24.h),
                            child: Text(
                              "msg_non_stop_8_hour".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.bodyLargeGray5003.copyWith(
                                height: 1.35,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          _buildSTART(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSleep(BuildContext context) {
    return BlocSelector<Sleep1Bloc, Sleep1State, Sleep1Model?>(
      selector: (state) => state.sleep1ModelObj,
      builder: (context, sleep1ModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 175.v,
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: sleep1ModelObj?.sleep3ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Sleep3ItemModel model =
                sleep1ModelObj?.sleep3ItemList[index] ?? Sleep3ItemModel();
            return Sleep3ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgMaskGroup122x177,
            height: 122.v,
            width: 177.h,
            margin: EdgeInsets.only(right: 10.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupIndigo800,
            height: 122.v,
            width: 177.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(left: 10.h),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Sleep:
        return "/";
      case BottomBarEnum.Meditate:
        return "/";
      case BottomBarEnum.Music2:
        return "/";
      case BottomBarEnum.Afsar2:
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
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
