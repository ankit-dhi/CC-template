import '../play_option2_screen/widgets/playoptionlist2_item_widget.dart';
import 'bloc/play_option2_bloc.dart';
import 'models/play_option2_model.dart';
import 'models/playoptionlist2_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PlayOption2Screen extends StatelessWidget {
  const PlayOption2Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PlayOption2Bloc>(
        create: (context) => PlayOption2Bloc(
            PlayOption2State(playOption2ModelObj: PlayOption2Model()))
          ..add(PlayOption2InitialEvent()),
        child: PlayOption2Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMainStack(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 20.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 11.v),
                            Text("lbl_night_island".tr,
                                style: CustomTextStyles.displaySmallIndigo50),
                            SizedBox(height: 14.v),
                            Row(children: [
                              Text("lbl_45_min".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray30005),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 7.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray30005,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_sleep_music".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray30005))
                            ]),
                            SizedBox(height: 19.v),
                            Container(
                                width: 315.h,
                                margin: EdgeInsets.only(right: 59.h),
                                child: Text("msg_ease_the_mind_into".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeBluegray30002
                                        .copyWith(height: 1.45))),
                            SizedBox(height: 26.v),
                            Padding(
                                padding: EdgeInsets.only(right: 57.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLocationIndigo50,
                                      height: 16.v,
                                      width: 18.h),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, bottom: 3.v),
                                      child: Text("lbl_24_234_favorits".tr,
                                          style: CustomTextStyles
                                              .bodyMediumIndigo50)),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFileIndigo50,
                                      height: 16.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("msg_34_234_lestening".tr,
                                          style: CustomTextStyles
                                              .bodyMediumIndigo50))
                                ])),
                            SizedBox(height: 28.v),
                            Opacity(
                                opacity: 0.15,
                                child: Divider(
                                    color: appTheme.blueGray30002
                                        .withOpacity(0.4))),
                            SizedBox(height: 28.v),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("lbl_related".tr,
                                    style: CustomTextStyles
                                        .headlineSmallIndigo50)),
                            SizedBox(height: 21.v),
                            _buildPlayOptionList(context)
                          ]))
                ])),
            bottomNavigationBar: _buildPlayButton(context)));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 290.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 54.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.indigo500))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup77),
                          fit: BoxFit.cover)),
                  child: CustomAppBar(
                      height: 55.v,
                      leadingWidth: 75.h,
                      leading: AppbarLeadingIconbuttonTwo(
                          imagePath: ImageConstant.imgArrowLeft,
                          margin: EdgeInsets.only(left: 20.h),
                          onTap: () {
                            onTapArrowLeftButton(context);
                          }),
                      actions: [
                        AppbarTrailingIconbutton(
                            imagePath: ImageConstant.imgVectorIndigo50,
                            margin: EdgeInsets.only(left: 20.h)),
                        AppbarTrailingIconbutton(
                            imagePath: ImageConstant.imgDownload,
                            margin: EdgeInsets.only(left: 15.h, right: 20.h))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildPlayOptionList(BuildContext context) {
    return SizedBox(
        height: 174.v,
        child:
            BlocSelector<PlayOption2Bloc, PlayOption2State, PlayOption2Model?>(
                selector: (state) => state.playOption2ModelObj,
                builder: (context, playOption2ModelObj) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20.h);
                      },
                      itemCount:
                          playOption2ModelObj?.playoptionlist2ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Playoptionlist2ItemModel model = playOption2ModelObj
                                ?.playoptionlist2ItemList[index] ??
                            Playoptionlist2ItemModel();
                        return Playoptionlist2ItemWidget(model);
                      });
                }));
  }

  /// Section Widget
  Widget _buildPlayButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_play".tr,
        margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 32.v),
        buttonTextStyle: CustomTextStyles.bodyMediumGray10003,
        onPressed: () {
          onTapPlayButton(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeftButton(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the sleepMusic2Screen when the action is triggered.
  onTapPlayButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sleepMusic2Screen,
    );
  }
}
