import '../choose_topic2_screen/widgets/choosetopicgrid2_item_widget.dart';
import 'bloc/choose_topic2_bloc.dart';
import 'models/choose_topic2_model.dart';
import 'models/choosetopicgrid2_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

class ChooseTopic2Screen extends StatelessWidget {
  const ChooseTopic2Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseTopic2Bloc>(
        create: (context) => ChooseTopic2Bloc(
            ChooseTopic2State(chooseTopic2ModelObj: ChooseTopic2Model()))
          ..add(ChooseTopic2InitialEvent()),
        child: ChooseTopic2Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Column(children: [
                  SizedBox(height: 79.v),
                  Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 220.h,
                                margin: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_what_brings_you".tr,
                                          style:
                                              theme.textTheme.headlineMedium),
                                      TextSpan(
                                          text: "lbl_to_silent_moon2".tr,
                                          style: CustomTextStyles
                                              .headlineMediumLight)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("msg_choose_a_topic_to".tr,
                                    style: CustomTextStyles
                                        .titleLargeBluegray30003)),
                            SizedBox(height: 27.v),
                            SizedBox(
                                height: 858.v,
                                width: 377.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 43.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15.h,
                                                  vertical: 17.v),
                                              decoration: AppDecoration.fillPink
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroupRed200,
                                                        height: 105.v,
                                                        width: 134.h,
                                                        alignment:
                                                            Alignment.center),
                                                    SizedBox(height: 45.v),
                                                    Text("lbl_reduce_stess".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumPink200),
                                                    SizedBox(height: 6.v)
                                                  ]))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 3.h, bottom: 43.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15.h,
                                                  vertical: 23.v),
                                              decoration: AppDecoration
                                                  .fillIndigo
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SizedBox(height: 100.v),
                                                    Text("lbl_reduce_stess".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumIndigo300)
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMaskGroup,
                                          height: 210.v,
                                          width: 176.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(left: 3.h)),
                                      _buildChooseTopicGrid(context)
                                    ]))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildChooseTopicGrid(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(bottom: 188.v),
            child: BlocSelector<ChooseTopic2Bloc, ChooseTopic2State,
                    ChooseTopic2Model?>(
                selector: (state) => state.chooseTopic2ModelObj,
                builder: (context, chooseTopic2ModelObj) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 211.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 24.h,
                          crossAxisSpacing: 24.h),
                      physics: BouncingScrollPhysics(),
                      itemCount: chooseTopic2ModelObj
                              ?.choosetopicgrid2ItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        Choosetopicgrid2ItemModel model = chooseTopic2ModelObj
                                ?.choosetopicgrid2ItemList[index] ??
                            Choosetopicgrid2ItemModel();
                        return Choosetopicgrid2ItemWidget(model,
                            onTapImgReduceStressImage: () {
                          onTapImgReduceStressImage(context);
                        });
                      });
                })));
  }

  /// Navigates to the reminders2Screen when the action is triggered.
  onTapImgReduceStressImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reminders2Screen,
    );
  }
}
