import '../models/playoptionlist_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayoptionlistItemWidget extends StatelessWidget {
  PlayoptionlistItemWidget(
    this.playoptionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlayoptionlistItemModel playoptionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: playoptionlistItemModelObj?.moonClouds,
            height: 122.v,
            width: 177.h,
          ),
          SizedBox(height: 9.v),
          Text(
            playoptionlistItemModelObj.moonClouds1!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 8.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playoptionlistItemModelObj.time!,
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
                  playoptionlistItemModelObj.sleepmusic!,
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
