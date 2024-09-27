import '../sleep_music_screen/widgets/sleepmusic_item_widget.dart';
import 'bloc/sleep_music_bloc.dart';
import 'models/sleep_music_model.dart';
import 'models/sleepmusic_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/presentation/home_page/home_page.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_title.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SleepMusicScreen extends StatelessWidget {
  SleepMusicScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SleepMusicBloc>(
        create: (context) => SleepMusicBloc(
            SleepMusicState(sleepMusicModelObj: SleepMusicModel()))
          ..add(SleepMusicInitialEvent()),
        child: SleepMusicScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 49.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(children: [
                                _buildSleepMusic(context),
                                SizedBox(height: 20.v),
                                _buildWidget(context),
                                SizedBox(height: 12.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 45.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 7.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_night_island"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 4.v),
                                                        SizedBox(
                                                            width: 131.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_45_min"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall),
                                                                  Container(
                                                                      height: 3
                                                                          .adaptSize,
                                                                      width: 3
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          top: 5
                                                                              .v,
                                                                          bottom: 4
                                                                              .v),
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .blueGray30005,
                                                                          borderRadius:
                                                                              BorderRadius.circular(1.h))),
                                                                  Text(
                                                                      "lbl_sleep_music"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall)
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 5.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_night_island"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 6.v),
                                                        SizedBox(
                                                            width: 131.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_45_min"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall),
                                                                  Container(
                                                                      height: 3
                                                                          .adaptSize,
                                                                      width: 3
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          top: 5
                                                                              .v,
                                                                          bottom: 4
                                                                              .v),
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .blueGray30005,
                                                                          borderRadius:
                                                                              BorderRadius.circular(1.h))),
                                                                  Text(
                                                                      "lbl_sleep_music"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodySmall)
                                                                ]))
                                                      ]))
                                            ])))
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_sleep_music2".tr));
  }

  /// Section Widget
  Widget _buildSleepMusic(BuildContext context) {
    return BlocSelector<SleepMusicBloc, SleepMusicState, SleepMusicModel?>(
        selector: (state) => state.sleepMusicModelObj,
        builder: (context, sleepMusicModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 175.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: sleepMusicModelObj?.sleepmusicItemList.length ?? 0,
              itemBuilder: (context, index) {
                SleepmusicItemModel model =
                    sleepMusicModelObj?.sleepmusicItemList[index] ??
                        SleepmusicItemModel();
                return SleepmusicItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomImageView(
              imagePath: ImageConstant.imgGroupIndigo800,
              height: 122.v,
              width: 177.h,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(right: 9.h))),
      Expanded(
          child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup122x177,
              height: 122.v,
              width: 177.h,
              margin: EdgeInsets.only(left: 9.h)))
    ]);
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
