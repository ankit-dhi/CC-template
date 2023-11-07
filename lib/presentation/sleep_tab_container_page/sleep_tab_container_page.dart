import 'bloc/sleep_tab_container_bloc.dart';
import 'models/sleep_tab_container_model.dart';
import 'package:ankit_s_application113/core/app_export.dart';
import 'package:ankit_s_application113/presentation/sleep_page/sleep_page.dart';
import 'package:ankit_s_application113/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ankit_s_application113/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application113/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SleepTabContainerPage extends StatefulWidget {
  const SleepTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SleepTabContainerPageState createState() => SleepTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SleepTabContainerBloc>(
      create: (context) => SleepTabContainerBloc(SleepTabContainerState(
        sleepTabContainerModelObj: SleepTabContainerModel(),
      ))
        ..add(SleepTabContainerInitialEvent()),
      child: SleepTabContainerPage(),
    );
  }
}

class SleepTabContainerPageState extends State<SleepTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SleepTabContainerBloc, SleepTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlueGray,
              child: Column(
                children: [
                  _buildStack(context),
                  Column(
                    children: [
                      SizedBox(
                        height: 502.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            SleepPage.builder(context),
                            SleepPage.builder(context),
                            SleepPage.builder(context),
                            SleepPage.builder(context),
                            SleepPage.builder(context),
                          ],
                        ),
                      ),
                      _buildRow(context),
                    ],
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
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 92.v,
      width: 404.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Column(
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.fillIndigoA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    "lbl_all".tr,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameIndigo50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Text(
                    "lbl_my".tr,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameIndigo5065x65,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    "lbl_anxious".tr,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(19.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Text(
                    "lbl_sleep".tr,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup7,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    "lbl_kids".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 215.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup17,
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
                      padding: EdgeInsets.only(top: 67.v),
                      child: Text(
                        "lbl_sleep_stories".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 276.h,
                      margin: EdgeInsets.only(bottom: 59.v),
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
                      padding: EdgeInsets.only(right: 1.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar(
                            leadingWidth: 72.h,
                            leading: CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 54.adaptSize,
                              width: 54.adaptSize,
                              margin: EdgeInsets.only(
                                top: 10.v,
                                right: 18.h,
                              ),
                            ),
                            title: Container(
                              height: 54.adaptSize,
                              width: 54.adaptSize,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                bottom: 10.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.indigo900,
                                borderRadius: BorderRadius.circular(
                                  27.h,
                                ),
                              ),
                            ),
                            actions: [
                              AppbarTrailingImage(
                                imagePath: ImageConstant.imgVector,
                                margin:
                                    EdgeInsets.fromLTRB(37.h, 17.v, 37.h, 31.v),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(right: 21.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorGray5001,
                                  height: 15.v,
                                  width: 13.h,
                                  margin: EdgeInsets.only(top: 2.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSearch,
                                  height: 7.v,
                                  width: 9.h,
                                  margin: EdgeInsets.only(bottom: 11.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo40001,
                            height: 7.v,
                            width: 9.h,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 15.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 10.v,
                            width: 9.h,
                            margin: EdgeInsets.only(left: 15.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 10.v,
                            width: 9.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildTabview(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup122x177,
            height: 122.v,
            width: 177.h,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroupIndigo800,
            height: 122.v,
            width: 177.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(left: 20.h),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMy(
    BuildContext context, {
    required String my,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 65.adaptSize,
          width: 65.adaptSize,
          padding: EdgeInsets.all(18.h),
          decoration: IconButtonStyleHelper.fillBlueGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameIndigo50,
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          my,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.blueGray30001,
          ),
        ),
      ],
    );
  }
}
