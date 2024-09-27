import '../models/chipviewsection_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewsectionItemWidget extends StatelessWidget {
  ChipviewsectionItemWidget(
    this.chipviewsectionItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewsectionItemModel chipviewsectionItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewsectionItemModelObj.su,
        style: TextStyle(
          color: chipviewsectionItemModelObj.isSelected
              ? appTheme.blueGray30003
              : appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'HelveticaNeue',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: chipviewsectionItemModelObj.isSelected,
      backgroundColor: appTheme.blueGray800,
      selectedColor: Colors.transparent,
      shape: chipviewsectionItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray30003,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
