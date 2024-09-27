import 'bloc/music_v3_bloc.dart';
import 'models/music_v3_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MusicV3Screen extends StatelessWidget {
  const MusicV3Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MusicV3Bloc>(
        create: (context) =>
            MusicV3Bloc(MusicV3State(musicV3ModelObj: MusicV3Model()))
              ..add(MusicV3InitialEvent()),
        child: MusicV3Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MusicV3Bloc, MusicV3State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorGray50244x168,
                                    height: 244.v,
                                    width: 168.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(top: 201.v)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorGray50238x161,
                                    height: 238.v,
                                    width: 161.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 267.v)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector372x237,
                                    height: 372.v,
                                    width: 237.h,
                                    alignment: Alignment.bottomLeft),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        width: 259.h,
                                        margin: EdgeInsets.only(
                                            left: 154.h, bottom: 444.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.h, vertical: 50.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup705),
                                                fit: BoxFit.cover)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildIconButtonRow(context),
                                              _buildDownloadIconButton(context)
                                            ]))),
                                _buildCloseIconButton(context),
                                _buildRefresh2(context),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 78.h,
                                            top: 390.v,
                                            right: 78.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_focus_attention".tr,
                                                  style: theme
                                                      .textTheme.displaySmall),
                                              SizedBox(height: 17.v),
                                              Text("lbl_7_days_of_calm2".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBluegray300)
                                            ]))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse46180x185,
                                    height: 180.v,
                                    width: 185.h,
                                    alignment: Alignment.topLeft),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse47266x179,
                                    height: 266.v,
                                    width: 179.h,
                                    alignment: Alignment.bottomRight)
                              ]))))));
    });
  }

  /// Section Widget
  Widget _buildIconButtonRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 296.v),
        child: CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(18.h),
            decoration: IconButtonStyleHelper.fillGrayTL27,
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA70001)));
  }

  /// Section Widget
  Widget _buildDownloadIconButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, bottom: 296.v),
        child: CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(18.h),
            decoration: IconButtonStyleHelper.fillGrayTL271,
            child: CustomImageView(
                imagePath: ImageConstant.imgDownloadWhiteA70001)));
  }

  /// Section Widget
  Widget _buildCloseIconButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, top: 50.v),
        child: CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.outlineGrayTL27,
            alignment: Alignment.topLeft,
            onTap: () {
              onTapBtnCloseIconButton(context);
            },
            child:
                CustomImageView(imagePath: ImageConstant.imgCloseBlueGray800)));
  }

  /// Section Widget
  Widget _buildRefresh2(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 5.h, bottom: 168.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 43.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 35.v),
                            child: _buildRefresh(context,
                                refreshImage: ImageConstant.imgRefresh,
                                fifteenText: "lbl_15".tr)),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup6834,
                            height: 109.adaptSize,
                            width: 109.adaptSize,
                            margin: EdgeInsets.only(left: 50.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 49.h, top: 35.v, bottom: 35.v),
                            child: _buildRefresh(context,
                                refreshImage:
                                    ImageConstant.imgRefreshBlueGray300,
                                fifteenText: "lbl_15".tr))
                      ])),
              SizedBox(height: 50.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 19.h),
                  child: SliderTheme(
                      data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          activeTrackColor: appTheme.blueGray800,
                          inactiveTrackColor:
                              appTheme.blueGray300.withOpacity(0.53),
                          thumbColor: appTheme.blueGray800,
                          thumbShape: RoundSliderThumbShape()),
                      child: Slider(
                          value: 8.62,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {}))),
              SizedBox(height: 11.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_01_30".tr, style: theme.textTheme.bodyLarge),
                Padding(
                    padding: EdgeInsets.only(left: 293.h),
                    child:
                        Text("lbl_45_00".tr, style: theme.textTheme.bodyLarge))
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
                      style: CustomTextStyles.bodySmallBluegray300
                          .copyWith(color: appTheme.blueGray300))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnCloseIconButton(BuildContext context) {
    NavigatorService.goBack();
  }
}
