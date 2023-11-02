import '../models/focus1_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Focus1ItemWidget extends StatelessWidget {
  Focus1ItemWidget(
    this.focus1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Focus1ItemModel focus1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 113.v,
            width: 162.h,
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: focus1ItemModelObj?.focus,
              height: 113.v,
              width: 155.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              focus1ItemModelObj.focus1!,
              style: CustomTextStyles.titleMediumBluegray800,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    focus1ItemModelObj.meditation!,
                    style: CustomTextStyles.bodySmallBluegray30003,
                  ),
                ),
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray30003,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    focus1ItemModelObj.time!,
                    style: CustomTextStyles.bodySmallBluegray30003,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
