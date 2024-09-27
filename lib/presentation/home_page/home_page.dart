import '../home_page/widgets/focus_item_widget.dart';
import '../home_page/widgets/start_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/focus_item_model.dart';
import 'models/home_model.dart';
import 'models/start_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Row(
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
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_good_morning_afsar".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_we_wish_you_have".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 28.v),
              _buildSTART(context),
              SizedBox(height: 20.v),
              _buildNineteen(context),
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_recomended_for_you".tr,
                  style: CustomTextStyles.headlineSmallBluegray800,
                ),
              ),
              SizedBox(height: 18.v),
              _buildFocus(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSTART(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 210.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
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
              itemCount: homeModelObj?.startItemList.length ?? 0,
              itemBuilder: (context, index) {
                StartItemModel model =
                    homeModelObj?.startItemList[index] ?? StartItemModel();
                return StartItemWidget(
                  model,
                );
              },
            );
          },
        ),
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
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFocus(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 161.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
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
              itemCount: homeModelObj?.focusItemList.length ?? 0,
              itemBuilder: (context, index) {
                FocusItemModel model =
                    homeModelObj?.focusItemList[index] ?? FocusItemModel();
                return FocusItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
