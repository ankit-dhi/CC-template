import '../models/choosetopicgrid2_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Choosetopicgrid2ItemWidget extends StatelessWidget {
  Choosetopicgrid2ItemWidget(
    this.choosetopicgrid2ItemModelObj, {
    Key? key,
    this.onTapImgReduceStressImage,
  }) : super(
          key: key,
        );

  Choosetopicgrid2ItemModel choosetopicgrid2ItemModelObj;

  VoidCallback? onTapImgReduceStressImage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 210.v,
          width: 176.h,
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 17.v,
                  ),
                  child: Text(
                    choosetopicgrid2ItemModelObj.reduceStress!,
                    style: CustomTextStyles.titleMediumYellow100,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: choosetopicgrid2ItemModelObj?.reduceStressImage,
                height: 210.v,
                width: 176.h,
                alignment: Alignment.center,
                onTap: () {
                  onTapImgReduceStressImage!.call();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
