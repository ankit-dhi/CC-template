import '../models/sleep9_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sleep9ItemWidget extends StatelessWidget {
  Sleep9ItemWidget(
    this.sleep9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sleep9ItemModel sleep9ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: sleep9ItemModelObj?.nightIsland,
          height: 122.v,
          width: 177.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          sleep9ItemModelObj.nightIsland1!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sleep9ItemModelObj.time!,
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
                sleep9ItemModelObj.sleepmusic!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
