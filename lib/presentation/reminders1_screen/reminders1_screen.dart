import '../reminders1_screen/widgets/chipviewsection2_item_widget.dart';
import 'bloc/reminders1_bloc.dart';
import 'models/chipviewsection2_item_model.dart';
import 'models/reminders1_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Reminders1Screen extends StatelessWidget {
  const Reminders1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Reminders1Bloc>(
        create: (context) => Reminders1Bloc(
            Reminders1State(reminders1ModelObj: Reminders1Model()))
          ..add(Reminders1InitialEvent()),
        child: Reminders1Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 58.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25.v),
                      Container(
                          width: 240.h,
                          margin: EdgeInsets.only(left: 12.h),
                          child: Text("msg_what_time_would".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .headlineSmallBluegray800Bold
                                  .copyWith(height: 1.35))),
                      SizedBox(height: 11.v),
                      Container(
                          width: 317.h,
                          margin: EdgeInsets.only(left: 12.h, right: 69.h),
                          child: Text("msg_any_time_you_can".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray30003
                                  .copyWith(height: 1.65))),
                      SizedBox(height: 21.v),
                      _buildMenuSection(context),
                      SizedBox(height: 32.v),
                      Container(
                          width: 242.h,
                          margin: EdgeInsets.only(left: 12.h),
                          child: Text("msg_which_day_would".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .headlineSmallBluegray800Bold
                                  .copyWith(height: 1.35))),
                      SizedBox(height: 11.v),
                      Container(
                          width: 309.h,
                          margin: EdgeInsets.only(left: 12.h, right: 77.h),
                          child: Text("msg_everyday_is_best".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray30003
                                  .copyWith(height: 1.65))),
                      SizedBox(height: 31.v),
                      _buildChipViewSection(context),
                      SizedBox(height: 57.v),
                      _buildSaveButtonSection(context),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_no_thanks".tr,
                              style: CustomTextStyles.bodyMediumBluegray800))
                    ]))));
  }

  /// Section Widget
  Widget _buildMenuSection(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.gray10005,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 212.v,
            width: 399.h,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
            decoration: AppDecoration.fillGray10005
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 105.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMenu,
                                  height: 8.v,
                                  width: 10.h),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFacebookBlueGray30003,
                                  height: 7.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(left: 54.h))
                            ])),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 103.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 13.v,
                                  width: 11.h),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsBlueGray30004,
                                  height: 12.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(left: 52.h))
                            ])),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 88.h),
                            child: Row(children: [
                              Text("lbl_10".tr,
                                  style: theme.textTheme.headlineSmall),
                              Padding(
                                  padding: EdgeInsets.only(left: 49.h),
                                  child: Text("lbl_29".tr,
                                      style: theme.textTheme.headlineSmall))
                            ])),
                        SizedBox(height: 1.v),
                        SizedBox(
                            height: 69.v,
                            width: 373.h,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              92.h, 3.v, 99.h, 36.v),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("lbl_11".tr,
                                                    style: CustomTextStyles
                                                        .headlineSmallBluegray90002),
                                                Spacer(flex: 51),
                                                Text("lbl_30".tr,
                                                    style: CustomTextStyles
                                                        .headlineSmallBluegray90002),
                                                Spacer(flex: 48),
                                                Text("lbl_am".tr,
                                                    style: CustomTextStyles
                                                        .headlineSmallBluegray90002)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 88.h, bottom: 1.v),
                                          child: Text("lbl_12".tr,
                                              style: theme
                                                  .textTheme.headlineSmall))),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 99.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("lbl_31".tr,
                                                    style: theme.textTheme
                                                        .headlineSmall),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 47.h),
                                                    child: Text("lbl_pm".tr,
                                                        style: theme.textTheme
                                                            .headlineSmall))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector11,
                                      height: 38.v,
                                      width: 373.h,
                                      alignment: Alignment.topCenter)
                                ])),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 106.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.img1,
                                  height: 12.v,
                                  width: 5.h),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsBlueGray30003,
                                  height: 13.v,
                                  width: 22.h,
                                  margin: EdgeInsets.only(left: 55.h))
                            ])),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 106.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFilter,
                                  height: 7.v,
                                  width: 8.h),
                              CustomImageView(
                                  imagePath: ImageConstant.img33,
                                  height: 8.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(left: 51.h))
                            ]))
                      ])),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 48.v,
                                width: 321.h,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, -1.55),
                                        end: Alignment(0.5, 1.25),
                                        colors: [
                                      appTheme.gray10005.withOpacity(0.15),
                                      appTheme.gray10005
                                    ]))),
                            SizedBox(height: 97.v),
                            Container(
                                height: 47.v,
                                width: 255.h,
                                margin: EdgeInsets.only(left: 23.h),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, -1.55),
                                        end: Alignment(0.5, 1.25),
                                        colors: [
                                      appTheme.gray10005.withOpacity(0.15),
                                      appTheme.gray10005
                                    ])))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildChipViewSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: BlocSelector<Reminders1Bloc, Reminders1State, Reminders1Model?>(
            selector: (state) => state.reminders1ModelObj,
            builder: (context, reminders1ModelObj) {
              return Wrap(
                  runSpacing: 14.75.v,
                  spacing: 14.75.h,
                  children: List<Widget>.generate(
                      reminders1ModelObj?.chipviewsection2ItemList.length ?? 0,
                      (index) {
                    Chipviewsection2ItemModel model =
                        reminders1ModelObj?.chipviewsection2ItemList[index] ??
                            Chipviewsection2ItemModel();
                    return Chipviewsection2ItemWidget(model,
                        onSelectedChipView: (value) {
                      context.read<Reminders1Bloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    });
                  }));
            }));
  }

  /// Section Widget
  Widget _buildSaveButtonSection(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.symmetric(horizontal: 12.h),
        onPressed: () {
          onTapSaveButtonSection(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the home1Screen when the action is triggered.
  onTapSaveButtonSection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.home1Screen,
    );
  }
}
