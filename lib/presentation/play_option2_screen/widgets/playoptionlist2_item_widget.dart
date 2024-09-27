import '../models/playoptionlist2_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Playoptionlist2ItemWidget extends StatelessWidget {
  Playoptionlist2ItemWidget(
    this.playoptionlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Playoptionlist2ItemModel playoptionlist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: playoptionlist2ItemModelObj?.moonClouds,
            height: 122.v,
            width: 177.h,
          ),
          SizedBox(height: 9.v),
          Text(
            playoptionlist2ItemModelObj.moonClouds1!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 8.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playoptionlist2ItemModelObj.time!,
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
                  playoptionlist2ItemModelObj.sleepmusic!,
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
