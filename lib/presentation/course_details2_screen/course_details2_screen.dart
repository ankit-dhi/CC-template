import '../course_details2_screen/widgets/coursedetailslist_item_widget.dart';
import 'bloc/course_details2_bloc.dart';
import 'models/course_details2_model.dart';
import 'models/coursedetailslist_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CourseDetails2Screen extends StatelessWidget {
  const CourseDetails2Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CourseDetails2Bloc>(
        create: (context) => CourseDetails2Bloc(
            CourseDetails2State(courseDetails2ModelObj: CourseDetails2Model()))
          ..add(CourseDetails2InitialEvent()),
        child: CourseDetails2Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeftColumn(context),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 12.v),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("lbl_happy_morning".tr,
                                    style: theme.textTheme.displaySmall)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("lbl_course".tr,
                                    style: CustomTextStyles
                                        .bodyMediumBluegray30003_1)),
                            SizedBox(height: 19.v),
                            Container(
                                width: 315.h,
                                margin:
                                    EdgeInsets.only(left: 20.h, right: 79.h),
                                child: Text("msg_ease_the_mind_into".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeBluegray30003
                                        .copyWith(height: 1.45))),
                            SizedBox(height: 26.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 76.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLocation,
                                      height: 16.v,
                                      width: 18.h),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, bottom: 3.v),
                                      child: Text("lbl_24_234_favorits".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray30003)),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFile,
                                      height: 16.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("msg_34_234_lestening".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray30003))
                                ])),
                            SizedBox(height: 38.v),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("lbl_pick_a_nnrrator".tr,
                                    style: CustomTextStyles
                                        .titleLargeBluegray800)),
                            SizedBox(height: 23.v),
                            _buildMaleVoiceColumn(context),
                            SizedBox(height: 56.v),
                            _buildCourseDetailsList(context)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 50.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.customBorderBL10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup51),
                fit: BoxFit.cover)),
        child: CustomAppBar(
            height: 55.v,
            leadingWidth: 75.h,
            leading: AppbarLeadingIconbuttonOne(
                imagePath: ImageConstant.imgArrowLeft,
                margin: EdgeInsets.only(left: 20.h),
                onTap: () {
                  onTapArrowLeftIconButton(context);
                }),
            actions: [
              AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgVectorIndigo50,
                  margin: EdgeInsets.only(left: 20.h)),
              AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgDownload,
                  margin: EdgeInsets.only(left: 15.h, right: 20.h))
            ]));
  }

  /// Section Widget
  Widget _buildMaleVoiceColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 20.h, right: 95.h),
          child: Row(children: [
            Text("lbl_male_voice".tr, style: CustomTextStyles.bodyLargePrimary),
            Padding(
                padding: EdgeInsets.only(left: 70.h),
                child: Text("lbl_female_voice".tr,
                    style: CustomTextStyles.bodyLargeBluegray30003_1))
          ])),
      SizedBox(height: 12.v),
      Container(
          height: 2.v,
          width: 46.h,
          margin: EdgeInsets.only(left: 48.h),
          decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.vertical(top: Radius.circular(2.h)))),
      Divider(color: appTheme.indigo5001)
    ]);
  }

  /// Section Widget
  Widget _buildCourseDetailsList(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: BlocSelector<CourseDetails2Bloc, CourseDetails2State,
                    CourseDetails2Model?>(
                selector: (state) => state.courseDetails2ModelObj,
                builder: (context, courseDetails2ModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Opacity(
                            opacity: 0.15,
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 0.5.v),
                                child: SizedBox(
                                    width: 374.h,
                                    child: Divider(
                                        height: 1.v,
                                        thickness: 1.v,
                                        color: appTheme.blueGray20067))));
                      },
                      itemCount: courseDetails2ModelObj
                              ?.coursedetailslistItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        CoursedetailslistItemModel model =
                            courseDetails2ModelObj
                                    ?.coursedetailslistItemList[index] ??
                                CoursedetailslistItemModel();
                        return CoursedetailslistItemWidget(model,
                            onTapVector: () {
                          onTapVector(context);
                        });
                      });
                })));
  }

  /// Navigates to the meditateV4Screen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.meditateV4Screen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeftIconButton(BuildContext context) {
    NavigatorService.goBack();
  }
}
