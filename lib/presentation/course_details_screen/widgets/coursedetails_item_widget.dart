import '../models/coursedetails_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoursedetailsItemWidget extends StatelessWidget {
  CoursedetailsItemWidget(
    this.coursedetailsItemModelObj, {
    Key? key,
    this.onTapVector,
  }) : super(
          key: key,
        );

  CoursedetailsItemModel coursedetailsItemModelObj;

  VoidCallback? onTapVector;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              onTapVector!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorGray10003,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_focus_attention".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_10_min".tr,
                          style: CustomTextStyles.bodySmallBluegray30003,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.v),
          Padding(
            padding: EdgeInsets.only(right: 58.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.outlineBlueGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray30003,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_body_scan".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_5_min".tr,
                        style: CustomTextStyles.bodySmallBluegray30003,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(14.h),
                decoration: IconButtonStyleHelper.outlineBlueGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray30003,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_making_happiness".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_3_min".tr,
                      style: CustomTextStyles.bodySmallBluegray30003,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
