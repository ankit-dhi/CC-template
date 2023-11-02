import '../home1_screen/widgets/focus1_item_widget.dart';
import '../home1_screen/widgets/start1_item_widget.dart';
import 'bloc/home1_bloc.dart';
import 'models/focus1_item_model.dart';
import 'models/home1_model.dart';
import 'models/start1_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/presentation/home_page/home_page.dart';
import 'package:ankit_s_application110/widgets/custom_bottom_bar.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Home1Screen extends StatelessWidget {
  Home1Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Home1Bloc>(
      create: (context) => Home1Bloc(Home1State(
        home1ModelObj: Home1Model(),
      ))
        ..add(Home1InitialEvent()),
      child: Home1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50.v),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Text(
                        "lbl_silent".tr,
                        style: CustomTextStyles
                            .titleMediumAirbnbCerealAppBluegray800,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLogo,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "lbl_moon".tr,
                        style: CustomTextStyles
                            .titleMediumAirbnbCerealAppBluegray800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 41.v),
              Text(
                "msg_good_morning_afsar".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_we_wish_you_have".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 28.v),
              _buildSTART(context),
              SizedBox(height: 20.v),
              _buildNineteen(context),
              SizedBox(height: 41.v),
              Text(
                "msg_recomended_for_you".tr,
                style: CustomTextStyles.headlineSmallBluegray800,
              ),
              SizedBox(height: 18.v),
              _buildFocus(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSTART(BuildContext context) {
    return SizedBox(
      height: 210.v,
      child: BlocSelector<Home1Bloc, Home1State, Home1Model?>(
        selector: (state) => state.home1ModelObj,
        builder: (context, home1ModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount: home1ModelObj?.start1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Start1ItemModel model =
                  home1ModelObj?.start1ItemList[index] ?? Start1ItemModel();
              return Start1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return CustomIconButton(
      height: 40.adaptSize,
      width: 40.adaptSize,
      padding: EdgeInsets.all(14.h),
      decoration: IconButtonStyleHelper.fillWhiteA,
      child: CustomImageView(
        imagePath: ImageConstant.imgVectorBlueGray800,
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        width: 374.h,
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 26.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup610,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_daily_thought".tr,
                  style: CustomTextStyles.titleMediumWhiteA70001,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 136.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_meditation".tr,
                          style: CustomTextStyles.bodySmallGray200,
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray200,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_3_10_min".tr,
                        style: CustomTextStyles.bodySmallGray200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildVector(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFocus(BuildContext context) {
    return SizedBox(
      height: 161.v,
      child: BlocSelector<Home1Bloc, Home1State, Home1Model?>(
        selector: (state) => state.home1ModelObj,
        builder: (context, home1ModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 30.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount: home1ModelObj?.focus1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Focus1ItemModel model =
                  home1ModelObj?.focus1ItemList[index] ?? Focus1ItemModel();
              return Focus1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Sleep:
        return "/";
      case BottomBarEnum.Meditate:
        return "/";
      case BottomBarEnum.Music2:
        return "/";
      case BottomBarEnum.Afsar2:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}