// ignore_for_file: must_be_immutable

part of 'sign_up4_bloc.dart';

/// Represents the state of SignUp4 in the application.
class SignUp4State extends Equatable {
  SignUp4State({
    this.vectorNineController,
    this.emailController,
    this.iHaveReadThePrivacePolicy = false,
    this.signUp4ModelObj,
  });

  TextEditingController? vectorNineController;

  TextEditingController? emailController;

  SignUp4Model? signUp4ModelObj;

  bool iHaveReadThePrivacePolicy;

  @override
  List<Object?> get props => [
        vectorNineController,
        emailController,
        iHaveReadThePrivacePolicy,
        signUp4ModelObj,
      ];
  SignUp4State copyWith({
    TextEditingController? vectorNineController,
    TextEditingController? emailController,
    bool? iHaveReadThePrivacePolicy,
    SignUp4Model? signUp4ModelObj,
  }) {
    return SignUp4State(
      vectorNineController: vectorNineController ?? this.vectorNineController,
      emailController: emailController ?? this.emailController,
      iHaveReadThePrivacePolicy:
          iHaveReadThePrivacePolicy ?? this.iHaveReadThePrivacePolicy,
      signUp4ModelObj: signUp4ModelObj ?? this.signUp4ModelObj,
    );
  }
}
