import '../models/sleep3_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sleep3ItemWidget extends StatelessWidget {
  Sleep3ItemWidget(
    this.sleep3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sleep3ItemModel sleep3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: sleep3ItemModelObj?.nightIsland,
          height: 122.v,
          width: 177.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          sleep3ItemModelObj.nightIsland1!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sleep3ItemModelObj.time!,
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
                sleep3ItemModelObj.sleepmusic!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
