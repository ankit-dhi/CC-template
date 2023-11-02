// ignore_for_file: must_be_immutable

part of 'sign_up3_bloc.dart';

/// Represents the state of SignUp3 in the application.
class SignUp3State extends Equatable {
  SignUp3State({
    this.vectorNineController,
    this.emailController,
    this.iHaveReadThePrivacePolicy = false,
    this.signUp3ModelObj,
  });

  TextEditingController? vectorNineController;

  TextEditingController? emailController;

  SignUp3Model? signUp3ModelObj;

  bool iHaveReadThePrivacePolicy;

  @override
  List<Object?> get props => [
        vectorNineController,
        emailController,
        iHaveReadThePrivacePolicy,
        signUp3ModelObj,
      ];
  SignUp3State copyWith({
    TextEditingController? vectorNineController,
    TextEditingController? emailController,
    bool? iHaveReadThePrivacePolicy,
    SignUp3Model? signUp3ModelObj,
  }) {
    return SignUp3State(
      vectorNineController: vectorNineController ?? this.vectorNineController,
      emailController: emailController ?? this.emailController,
      iHaveReadThePrivacePolicy:
          iHaveReadThePrivacePolicy ?? this.iHaveReadThePrivacePolicy,
      signUp3ModelObj: signUp3ModelObj ?? this.signUp3ModelObj,
    );
  }
}
