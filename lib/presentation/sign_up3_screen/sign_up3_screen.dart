import 'bloc/sign_up3_bloc.dart';
import 'models/sign_up3_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/core/utils/validation_functions.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_checkbox_button.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:ankit_s_application110/widgets/custom_outlined_button.dart';
import 'package:ankit_s_application110/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application110/domain/facebookauth/facebook_auth_helper.dart';
import 'package:ankit_s_application110/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUp3Screen extends StatelessWidget {
  SignUp3Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUp3Bloc>(
        create: (context) =>
            SignUp3Bloc(SignUp3State(signUp3ModelObj: SignUp3Model()))
              ..add(SignUp3InitialEvent()),
        child: SignUp3Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 33.v),
                    child: Column(children: [
                      Text("msg_create_your_account".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 31.v),
                      _buildContinueWithFacebook(context),
                      SizedBox(height: 20.v),
                      _buildContinueWithGoogle(context),
                      SizedBox(height: 39.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 92.h),
                              child: Text("msg_or_log_in_with_email".tr,
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 37.v),
                      _buildVectorNine(context),
                      SizedBox(height: 20.v),
                      _buildEmail(context),
                      SizedBox(height: 20.v),
                      _buildVector(context),
                      SizedBox(height: 20.v),
                      _buildIHaveReadThePrivacePolicy(context),
                      SizedBox(height: 29.v),
                      _buildGetStarted(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 413.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, right: 339.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildContinueWithFacebook(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_continue_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.v,
                width: 12.h)),
        buttonStyle: CustomButtonStyles.fillIndigo,
        onPressed: () {
          onTapContinueWithFacebook(context);
        });
  }

  /// Section Widget
  Widget _buildContinueWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 24.v, width: 23.h)),
        onPressed: () {
          onTapContinueWithGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildVectorNine(BuildContext context) {
    return BlocSelector<SignUp3Bloc, SignUp3State, TextEditingController?>(
        selector: (state) => state.vectorNineController,
        builder: (context, vectorNineController) {
          return CustomTextFormField(
              controller: vectorNineController,
              hintText: "lbl_afsar".tr,
              hintStyle: CustomTextStyles.bodyLargeLight,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 26.v, 21.h, 26.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVector9,
                      height: 9.v,
                      width: 14.h)),
              suffixConstraints: BoxConstraints(maxHeight: 63.v),
              contentPadding:
                  EdgeInsets.only(left: 20.h, top: 22.v, bottom: 22.v));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUp3Bloc, SignUp3State, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_imshuvo97_gmail_com".tr,
              hintStyle: CustomTextStyles.bodyLargeLight,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 26.v, 21.h, 26.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVector9,
                      height: 9.v,
                      width: 14.h)),
              suffixConstraints: BoxConstraints(maxHeight: 63.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(left: 20.h, top: 22.v, bottom: 22.v),
              borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
              fillColor: appTheme.gray10004);
        });
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 28.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup6802,
                height: 6.v,
                width: 86.h)));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return SizedBox(
        height: 63.v,
        width: 374.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          _buildWidget(context),
          CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 8.v,
              width: 20.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 21.h))
        ]));
  }

  /// Section Widget
  Widget _buildIHaveReadThePrivacePolicy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: BlocSelector<SignUp3Bloc, SignUp3State, bool?>(
            selector: (state) => state.iHaveReadThePrivacePolicy,
            builder: (context, iHaveReadThePrivacePolicy) {
              return CustomCheckboxButton(
                  width: 363.h,
                  text: "msg_i_have_read_the".tr,
                  value: iHaveReadThePrivacePolicy,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<SignUp3Bloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        buttonTextStyle: CustomTextStyles.bodyMediumGray10003);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapContinueWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapContinueWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
