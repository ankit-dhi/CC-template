import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:ankit_s_application110/core/app_export.dart';
import 'package:ankit_s_application110/core/utils/validation_functions.dart';
import 'package:ankit_s_application110/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ankit_s_application110/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application110/widgets/custom_elevated_button.dart';
import 'package:ankit_s_application110/widgets/custom_outlined_button.dart';
import 'package:ankit_s_application110/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application110/domain/facebookauth/facebook_auth_helper.dart';
import 'package:ankit_s_application110/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
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
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 31.v),
                    child: Column(children: [
                      Text("lbl_welcome_back".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 33.v),
                      _buildContinueWithFacebookButton(context),
                      SizedBox(height: 20.v),
                      _buildContinueWithGoogleButton(context),
                      SizedBox(height: 39.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 92.h),
                              child: Text("msg_or_log_in_with_email".tr,
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 37.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 20.v),
                      BlocSelector<SignInBloc, SignInState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                hintStyle: CustomTextStyles
                                    .bodyLargeBluegray30003Light,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: true,
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillGrayTL15,
                                fillColor: appTheme.gray10004);
                          }),
                      SizedBox(height: 30.v),
                      _buildLoginButton(context),
                      SizedBox(height: 20.v),
                      Text("msg_forgot_password".tr,
                          style: CustomTextStyles.bodyMediumBluegray800),
                      Spacer(),
                      SizedBox(height: 26.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_already_have_an2".tr,
                                style:
                                    CustomTextStyles.bodyMediumBluegray30003_2),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style: CustomTextStyles.bodyMediumPrimary)
                          ]),
                          textAlign: TextAlign.left)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 413.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, right: 338.h),
            onTap: () {
              onTapArrowLeftButton(context);
            }));
  }

  /// Section Widget
  Widget _buildContinueWithFacebookButton(BuildContext context) {
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
          onTapContinueWithFacebookButton(context);
        });
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 24.v, width: 23.h)),
        onPressed: () {
          onTapContinueWithGoogleButton(context);
        });
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<SignInBloc, SignInState, TextEditingController?>(
        selector: (state) => state.emailEditTextController,
        builder: (context, emailEditTextController) {
          return CustomTextFormField(
              controller: emailEditTextController,
              hintText: "lbl_email_address".tr,
              hintStyle: CustomTextStyles.bodyLargeBluegray30003Light,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_log_in".tr,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeftButton(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapContinueWithFacebookButton(BuildContext context) async {
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
  onTapContinueWithGoogleButton(BuildContext context) async {
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

  /// Navigates to the signUpScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
