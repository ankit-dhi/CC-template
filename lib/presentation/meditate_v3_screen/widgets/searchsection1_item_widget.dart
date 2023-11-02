import '../models/searchsection1_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Searchsection1ItemWidget extends StatelessWidget {
  Searchsection1ItemWidget(
    this.searchsection1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Searchsection1ItemModel searchsection1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: Align(
        alignment: Alignment.centerRight,
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
                  imagePath: searchsection1ItemModelObj?.search,
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                searchsection1ItemModelObj.all!,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
