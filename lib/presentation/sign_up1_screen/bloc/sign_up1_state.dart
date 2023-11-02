// ignore_for_file: must_be_immutable

part of 'sign_up1_bloc.dart';

/// Represents the state of SignUp1 in the application.
class SignUp1State extends Equatable {
  SignUp1State({
    this.createYourAccountController,
    this.emailController,
    this.iHaveReadThePrivacePolicy = false,
    this.signUp1ModelObj,
  });

  TextEditingController? createYourAccountController;

  TextEditingController? emailController;

  SignUp1Model? signUp1ModelObj;

  bool iHaveReadThePrivacePolicy;

  @override
  List<Object?> get props => [
        createYourAccountController,
        emailController,
        iHaveReadThePrivacePolicy,
        signUp1ModelObj,
      ];
  SignUp1State copyWith({
    TextEditingController? createYourAccountController,
    TextEditingController? emailController,
    bool? iHaveReadThePrivacePolicy,
    SignUp1Model? signUp1ModelObj,
  }) {
    return SignUp1State(
      createYourAccountController:
          createYourAccountController ?? this.createYourAccountController,
      emailController: emailController ?? this.emailController,
      iHaveReadThePrivacePolicy:
          iHaveReadThePrivacePolicy ?? this.iHaveReadThePrivacePolicy,
      signUp1ModelObj: signUp1ModelObj ?? this.signUp1ModelObj,
    );
  }
}
