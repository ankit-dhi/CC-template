import '../meditate_v3_screen/widgets/durationstaggered_item_widget.dart';
import '../meditate_v3_screen/widgets/searchsection1_item_widget.dart';
import 'bloc/meditate_v3_bloc.dart';
import 'models/durationstaggered_item_model.dart';
import 'models/meditate_v3_model.dart';
import 'models/searchsection1_item_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/presentation/home_page/home_page.dart';
import 'package:ankit_s_application110/widgets/custom_bottom_bar.dart';
import 'package:ankit_s_application110/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class MeditateV3Screen extends StatelessWidget {
  MeditateV3Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MeditateV3Bloc>(
      create: (context) => MeditateV3Bloc(MeditateV3State(
        meditateV3ModelObj: MeditateV3Model(),
      ))
        ..add(MeditateV3InitialEvent()),
      child: MeditateV3Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 65.v),
              Text(
                "lbl_meditate".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 326.h,
                margin: EdgeInsets.symmetric(horizontal: 43.h),
                child: Text(
                  "msg_we_can_learn_how".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBluegray300Light.copyWith(
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              _buildSearchSection(context),
              SizedBox(height: 29.v),
              _buildNineteenColumn(context),
              SizedBox(height: 20.v),
              _buildDurationStaggered(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 92.v,
        child: BlocSelector<MeditateV3Bloc, MeditateV3State, MeditateV3Model?>(
          selector: (state) => state.meditateV3ModelObj,
          builder: (context, meditateV3ModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 20.h,
                );
              },
              itemCount: meditateV3ModelObj?.searchsection1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Searchsection1ItemModel model =
                    meditateV3ModelObj?.searchsection1ItemList[index] ??
                        Searchsection1ItemModel();
                return Searchsection1ItemWidget(
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
  Widget _buildVectorIcon(BuildContext context) {
    return CustomIconButton(
      height: 40.adaptSize,
      width: 40.adaptSize,
      padding: EdgeInsets.all(14.h),
      decoration: IconButtonStyleHelper.fillBlueGrayTL20,
      child: CustomImageView(
        imagePath: ImageConstant.imgVectorBlueGray50,
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteenColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        width: 374.h,
        padding: EdgeInsets.symmetric(
          horizontal: 29.h,
          vertical: 27.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup549,
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
                  "lbl_daily_calm".tr,
                  style: CustomTextStyles.titleMediumBluegray800,
                ),
                SizedBox(height: 9.v),
                SizedBox(
                  width: 155.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_apr_30".tr,
                        style: CustomTextStyles.bodySmallBluegray600,
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray600,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_pause_practice".tr,
                        style: CustomTextStyles.bodySmallBluegray600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildVectorIcon(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationStaggered(BuildContext context) {
    return Expanded(
      child: BlocSelector<MeditateV3Bloc, MeditateV3State, MeditateV3Model?>(
        selector: (state) => state.meditateV3ModelObj,
        builder: (context, meditateV3ModelObj) {
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 4,
            crossAxisSpacing: 24.14.h,
            mainAxisSpacing: 24.14.h,
            staggeredTileBuilder: (index) {
              return StaggeredTile.fit(2);
            },
            itemCount:
                meditateV3ModelObj?.durationstaggeredItemList.length ?? 0,
            itemBuilder: (context, index) {
              DurationstaggeredItemModel model =
                  meditateV3ModelObj?.durationstaggeredItemList[index] ??
                      DurationstaggeredItemModel();
              return DurationstaggeredItemWidget(
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
