import '../models/start4_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Start4ItemWidget extends StatelessWidget {
  Start4ItemWidget(
    this.start4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Start4ItemModel start4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 177.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 83.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        start4ItemModelObj.basics!,
                        style: CustomTextStyles.titleMediumYellow100,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        start4ItemModelObj.price!,
                        style: CustomTextStyles.bodySmallLime100,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: start4ItemModelObj?.basics1,
                  height: 89.v,
                  width: 97.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 7.h,
                    bottom: 36.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 34.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 11.v,
                  bottom: 10.v,
                ),
                child: Text(
                  start4ItemModelObj.time!,
                  style: CustomTextStyles.bodySmallGray200,
                ),
              ),
              CustomElevatedButton(
                height: 35.v,
                width: 70.h,
                text: "lbl_start".tr,
                margin: EdgeInsets.only(left: 26.h),
                buttonStyle: CustomButtonStyles.fillGrayTL17,
                buttonTextStyle: CustomTextStyles.bodySmallBluegray800,
              ),
            ],
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
