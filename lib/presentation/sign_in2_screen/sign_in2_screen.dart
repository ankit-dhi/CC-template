import 'bloc/sign_in2_bloc.dart';
import 'models/sign_in2_model.dart';
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
class SignIn2Screen extends StatelessWidget {
  SignIn2Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignIn2Bloc>(
        create: (context) =>
            SignIn2Bloc(SignIn2State(signIn2ModelObj: SignIn2Model()))
              ..add(SignIn2InitialEvent()),
        child: SignIn2Screen());
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
                      _buildEmail(context),
                      SizedBox(height: 20.v),
                      BlocSelector<SignIn2Bloc, SignIn2State,
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
                      _buildLogin(context),
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
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignIn2Bloc, SignIn2State, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
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
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_log_in".tr,
        onPressed: () {
          onTapLogin(context);
        });
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

  /// Navigates to the signUp2Screen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUp2Screen,
    );
  }
}
