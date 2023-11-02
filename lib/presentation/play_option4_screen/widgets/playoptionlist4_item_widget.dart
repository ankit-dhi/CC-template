import '../models/playoptionlist4_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Playoptionlist4ItemWidget extends StatelessWidget {
  Playoptionlist4ItemWidget(
    this.playoptionlist4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Playoptionlist4ItemModel playoptionlist4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: playoptionlist4ItemModelObj?.moonClouds,
            height: 122.v,
            width: 177.h,
          ),
          SizedBox(height: 9.v),
          Text(
            playoptionlist4ItemModelObj.moonClouds1!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 8.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playoptionlist4ItemModelObj.time!,
                style: theme.textTheme.bodySmall,
              ),
              Container(
                height: 3.adaptSize,
                width: 3.adaptSize,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray30005,
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  playoptionlist4ItemModelObj.sleepmusic!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
