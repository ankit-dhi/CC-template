import '../models/sleep4_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sleep4ItemWidget extends StatelessWidget {
  Sleep4ItemWidget(
    this.sleep4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sleep4ItemModel sleep4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            children: [
              CustomIconButton(
                height: 65.adaptSize,
                width: 65.adaptSize,
                padding: EdgeInsets.all(20.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL25,
                child: CustomImageView(
                  imagePath: sleep4ItemModelObj?.iconButton,
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                sleep4ItemModelObj.all!,
                style: CustomTextStyles.bodyLargeIndigo50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
