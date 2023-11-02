import '../models/start_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartItemWidget extends StatelessWidget {
  StartItemWidget(
    this.startItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StartItemModel startItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
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
                            startItemModelObj.basics!,
                            style: CustomTextStyles.titleMediumYellow100,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            startItemModelObj.price!,
                            style: CustomTextStyles.bodySmallLime100,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: startItemModelObj?.basics1,
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
                      startItemModelObj.time!,
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
        ),
      ),
    );
  }
}
