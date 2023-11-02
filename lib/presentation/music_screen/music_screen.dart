import 'bloc/music_bloc.dart';
import 'models/music_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MusicBloc>(
        create: (context) => MusicBloc(MusicState(musicModelObj: MusicModel()))
          ..add(MusicInitialEvent()),
        child: MusicScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MusicBloc, MusicState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                    height: 310.v,
                                    width: 220.h,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 310.v,
                                                  width: 220.h,
                                                  padding: EdgeInsets.only(
                                                      left: 75.h,
                                                      top: 50.v,
                                                      bottom: 50.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup72),
                                                          fit: BoxFit.cover)),
                                                  child: _buildSeventyTwoStack(
                                                      context))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 185.v,
                                                  width: 86.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 50.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup73),
                                                          fit: BoxFit.cover)),
                                                  child:
                                                      _buildSeventyThreeStack(
                                                          context)))
                                        ]))),
                            _buildCloseIconButton(context),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                    height: 755.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorIndigo900,
                                              height: 244.v,
                                              width: 168.h,
                                              alignment: Alignment.topLeft),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorIndigo900238x160,
                                              height: 238.v,
                                              width: 160.h,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(top: 187.v)),
                                          _buildVectorColumn(context),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 110.h,
                                                      top: 192.v,
                                                      right: 110.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            "lbl_night_island"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .displaySmallIndigo50),
                                                        SizedBox(height: 14.v),
                                                        Text(
                                                            "lbl_sleep_music"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumBluegray30005)
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorPrimarycontainer,
                                              height: 177.v,
                                              width: 152.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  bottom: 27.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorPrimarycontainer232x143,
                                              height: 232.v,
                                              width: 143.h,
                                              alignment: Alignment.bottomRight)
                                        ])))
                          ]))))));
    });
  }

  /// Section Widget
  Widget _buildSeventyTwoStack(BuildContext context) {
    return CustomIconButton(
        height: 55.adaptSize,
        width: 55.adaptSize,
        padding: EdgeInsets.all(18.h),
        alignment: Alignment.topLeft,
        child: CustomImageView(imagePath: ImageConstant.imgVectorIndigo50));
  }

  /// Section Widget
  Widget _buildSeventyThreeStack(BuildContext context) {
    return CustomIconButton(
        height: 55.adaptSize,
        width: 55.adaptSize,
        padding: EdgeInsets.all(18.h),
        alignment: Alignment.topLeft,
        child: CustomImageView(imagePath: ImageConstant.imgDownload));
  }

  /// Section Widget
  Widget _buildCloseIconButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, top: 50.v),
        child: CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.fillIndigo,
            alignment: Alignment.topLeft,
            onTap: () {
              onTapBtnCloseIconButton(context);
            },
            child:
                CustomImageView(imagePath: ImageConstant.imgCloseBlueGray800)));
  }

  /// Section Widget
  Widget _buildVectorColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 223.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 43.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 35.v),
                            child: _buildRefresh(context,
                                refreshImage:
                                    ImageConstant.imgVectorIndigo5039x38,
                                fifteenText: "lbl_15".tr)),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup6834Indigo50,
                            height: 109.adaptSize,
                            width: 109.adaptSize),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 35.v),
                            child: _buildRefresh(context,
                                refreshImage: ImageConstant.imgRefreshIndigo50,
                                fifteenText: "lbl_15".tr))
                      ])),
              SizedBox(height: 49.v),
              SizedBox(
                  height: 17.v,
                  width: 333.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 3.v,
                            width: 333.h,
                            margin: EdgeInsets.only(bottom: 5.v))),
                    SliderTheme(
                        data: SliderThemeData(
                            trackShape: RoundedRectSliderTrackShape(),
                            activeTrackColor: appTheme.indigo50,
                            inactiveTrackColor: appTheme.blueGray70087,
                            thumbColor: theme.colorScheme.primary,
                            thumbShape: RoundSliderThumbShape()),
                        child: Slider(
                            value: 8.62,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {}))
                  ])),
              SizedBox(height: 11.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_01_30".tr, style: CustomTextStyles.bodyLargeIndigo50),
                Text("lbl_45_00".tr, style: CustomTextStyles.bodyLargeIndigo50)
              ])
            ])));
  }

  /// Common widget
  Widget _buildRefresh(
    BuildContext context, {
    required String refreshImage,
    required String fifteenText,
  }) {
    return SizedBox(
        height: 39.v,
        width: 38.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: refreshImage,
              height: 39.v,
              width: 38.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(fifteenText,
                      style: CustomTextStyles.bodySmallIndigo50
                          .copyWith(color: appTheme.indigo50))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnCloseIconButton(BuildContext context) {
    NavigatorService.goBack();
  }
}
