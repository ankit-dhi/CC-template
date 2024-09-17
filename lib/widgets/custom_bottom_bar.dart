import 'package:ankit_s_application113/core/app_export.dart';
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
      icon: ImageConstant.imgNavMeditate,
      activeIcon: ImageConstant.imgNavMeditate,
      title: "lbl_meditate".tr,
      type: BottomBarEnum.Meditate,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMusic,
      activeIcon: ImageConstant.imgNavMusic,
      title: "lbl_music".tr,
      type: BottomBarEnum.Music,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAfsar,
      activeIcon: ImageConstant.imgNavAfsar,
      title: "lbl_afsar".tr,
      type: BottomBarEnum.Afsar,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900F2,
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
                  height: 22.v,
                  width: 18.h,
                  color: appTheme.blueGray30001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: appTheme.blueGray30001,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 22.v,
                  width: 21.h,
                  color: appTheme.blueGray30001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: appTheme.blueGray30001,
                    ),
                  ),
                ),
              ],
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
  Meditate,
  Music,
  Afsar,
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
