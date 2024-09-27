// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.vectorNineController,
    this.emailController,
    this.iHaveReadThePrivacePolicy = false,
    this.signUpModelObj,
  });

  TextEditingController? vectorNineController;

  TextEditingController? emailController;

  SignUpModel? signUpModelObj;

  bool iHaveReadThePrivacePolicy;

  @override
  List<Object?> get props => [
        vectorNineController,
        emailController,
        iHaveReadThePrivacePolicy,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? vectorNineController,
    TextEditingController? emailController,
    bool? iHaveReadThePrivacePolicy,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      vectorNineController: vectorNineController ?? this.vectorNineController,
      emailController: emailController ?? this.emailController,
      iHaveReadThePrivacePolicy:
          iHaveReadThePrivacePolicy ?? this.iHaveReadThePrivacePolicy,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
