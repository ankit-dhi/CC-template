// ignore_for_file: must_be_immutable

part of 'sign_up2_bloc.dart';

/// Represents the state of SignUp2 in the application.
class SignUp2State extends Equatable {
  SignUp2State({
    this.vectorNineController,
    this.emailController,
    this.iHaveReadThePrivacePolicy = false,
    this.signUp2ModelObj,
  });

  TextEditingController? vectorNineController;

  TextEditingController? emailController;

  SignUp2Model? signUp2ModelObj;

  bool iHaveReadThePrivacePolicy;

  @override
  List<Object?> get props => [
        vectorNineController,
        emailController,
        iHaveReadThePrivacePolicy,
        signUp2ModelObj,
      ];
  SignUp2State copyWith({
    TextEditingController? vectorNineController,
    TextEditingController? emailController,
    bool? iHaveReadThePrivacePolicy,
    SignUp2Model? signUp2ModelObj,
  }) {
    return SignUp2State(
      vectorNineController: vectorNineController ?? this.vectorNineController,
      emailController: emailController ?? this.emailController,
      iHaveReadThePrivacePolicy:
          iHaveReadThePrivacePolicy ?? this.iHaveReadThePrivacePolicy,
      signUp2ModelObj: signUp2ModelObj ?? this.signUp2ModelObj,
    );
  }
}
