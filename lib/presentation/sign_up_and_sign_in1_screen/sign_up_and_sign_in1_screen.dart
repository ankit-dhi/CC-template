import 'bloc/sign_up_and_sign_in1_bloc.dart';
import 'models/sign_up_and_sign_in1_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignUpAndSignIn1Screen extends StatelessWidget {
  const SignUpAndSignIn1Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpAndSignIn1Bloc>(
      create: (context) => SignUpAndSignIn1Bloc(SignUpAndSignIn1State(
        signUpAndSignIn1ModelObj: SignUpAndSignIn1Model(),
      ))
        ..add(SignUpAndSignIn1InitialEvent()),
      child: SignUpAndSignIn1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SignUpAndSignIn1Bloc, SignUpAndSignIn1State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.h,
                      vertical: 50.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup135,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
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
                        SizedBox(height: 80.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupBlueGray60001,
                          height: 242.v,
                          width: 332.h,
                        ),
                        SizedBox(height: 51.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Text(
                    "msg_we_are_what_we_do".tr,
                    style: CustomTextStyles.headlineLargeBluegray800,
                  ),
                  SizedBox(height: 21.v),
                  SizedBox(
                    width: 288.h,
                    child: Text(
                      "msg_thousand_of_people".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray30003.copyWith(
                        height: 1.65,
                      ),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  _buildSignupButton(context),
                  SizedBox(height: 19.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_already_have_an2".tr,
                          style: CustomTextStyles.bodyMediumBluegray30003_2,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_log_in".tr,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
    );
  }
}
