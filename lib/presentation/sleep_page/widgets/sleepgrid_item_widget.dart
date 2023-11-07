import '../models/sleepgrid_item_model.dart';
import 'package:ankit_s_application113/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SleepgridItemWidget extends StatelessWidget {
  SleepgridItemWidget(
    this.sleepgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SleepgridItemModel sleepgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: sleepgridItemModelObj?.nightIsland,
          height: 122.v,
          width: 177.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          sleepgridItemModelObj.nightIsland1!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sleepgridItemModelObj.time!,
              style: theme.textTheme.bodySmall,
            ),
            Container(
              height: 3.adaptSize,
              width: 3.adaptSize,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 5.v,
                bottom: 4.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueGray300,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                sleepgridItemModelObj.sleepmusic!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
