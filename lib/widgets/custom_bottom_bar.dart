import 'package:ankit_s_application110/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSleep,
      activeIcon: ImageConstant.imgNavSleep,
      title: "lbl_sleep".tr,
      type: BottomBarEnum.Sleep,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMeditate,
      activeIcon: ImageConstant.imgNavMeditate,
      title: "lbl_meditate".tr,
      type: BottomBarEnum.Meditate,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMusic,
      activeIcon: ImageConstant.imgNavMusic,
      title: "lbl_music2".tr,
      type: BottomBarEnum.Music2,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAfsar,
      activeIcon: ImageConstant.imgNavAfsar,
      title: "lbl_afsar2".tr,
      type: BottomBarEnum.Afsar2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray70019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              -5,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  color: appTheme.blueGray300,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodyMediumBluegray300_1.copyWith(
                      color: appTheme.blueGray300,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: SizedBox(
              height: 65.v,
              width: 46.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 46.adaptSize,
                      width: 46.adaptSize,
                      margin: EdgeInsets.only(bottom: 19.v),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 12.v,
                        right: 5.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 22.v,
                            width: 21.h,
                            color: appTheme.whiteA70001,
                            margin: EdgeInsets.only(
                              left: 9.h,
                              right: 8.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:
                                  CustomTextStyles.bodyMediumPrimary_1.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Sleep,
  Meditate,
  Music2,
  Afsar2,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
