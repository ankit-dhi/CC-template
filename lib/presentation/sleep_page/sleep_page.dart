import '../sleep_page/widgets/sleepgrid_item_widget.dart';
import 'bloc/sleep_bloc.dart';
import 'models/sleep_model.dart';
import 'models/sleepgrid_item_model.dart';
import 'package:ankit_s_application113/core/app_export.dart';
import 'package:ankit_s_application113/widgets/custom_elevated_button.dart';
import 'package:ankit_s_application113/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SleepPage extends StatefulWidget {
  const SleepPage({Key? key})
      : super(
          key: key,
        );

  @override
  SleepPageState createState() => SleepPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SleepBloc>(
      create: (context) => SleepBloc(SleepState(
        sleepModelObj: SleepModel(),
      ))
        ..add(SleepInitialEvent()),
      child: SleepPage(),
    );
  }
}

class SleepPageState extends State<SleepPage>
    with AutomaticKeepAliveClientMixin<SleepPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildFifteenColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgMaskGroup,
      height: 233.v,
      width: 373.h,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildTenStack(BuildContext context) {
    return CustomIconButton(
      height: 29.v,
      width: 30.h,
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup6821,
      ),
    );
  }

  /// Section Widget
  Widget _buildStartButton(BuildContext context) {
    return CustomElevatedButton(
      width: 70.h,
      text: "lbl_start".tr,
      margin: EdgeInsets.only(right: 92.h),
    );
  }

  /// Section Widget
  Widget _buildSleepGrid(BuildContext context) {
    return BlocSelector<SleepBloc, SleepState, SleepModel?>(
      selector: (state) => state.sleepModelObj,
      builder: (context, sleepModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 175.v,
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: sleepModelObj?.sleepgridItemList.length ?? 0,
          itemBuilder: (context, index) {
            SleepgridItemModel model =
                sleepModelObj?.sleepgridItemList[index] ?? SleepgridItemModel();
            return SleepgridItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFifteenColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            height: 233.v,
            width: 373.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildImage(context),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 233.v,
                    width: 373.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup233x373,
                          height: 233.v,
                          width: 373.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 11.h,
                              top: 10.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 29.v,
                                    width: 30.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        _buildTenStack(context),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgExclude,
                                          height: 8.v,
                                          width: 12.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(
                                            right: 7.h,
                                            bottom: 7.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 23.v),
                                Text(
                                  "lbl_the_ocean_moon".tr,
                                  style: theme.textTheme.displaySmall,
                                ),
                                SizedBox(height: 7.v),
                                Container(
                                  width: 209.h,
                                  margin: EdgeInsets.only(right: 24.h),
                                  child: Text(
                                    "msg_non_stop_8_hour".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyLargeGray50
                                        .copyWith(
                                      height: 1.35,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.v),
                                _buildStartButton(context),
                              ],
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
          SizedBox(height: 20.v),
          _buildSleepGrid(context),
        ],
      ),
    );
  }
}
