import '../models/durationsection1_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Durationsection1ItemWidget extends StatelessWidget {
  Durationsection1ItemWidget(
    this.durationsection1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Durationsection1ItemModel durationsection1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientErrorContainerToDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        width: 176.h,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 16.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup10,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 157.v),
            Text(
              durationsection1ItemModelObj.duration!,
              style: CustomTextStyles.titleMediumWhiteA70001,
            ),
          ],
        ),
      ),
    );
  }
}
