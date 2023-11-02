// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.emailEditTextController,
    this.passwordController,
    this.signInModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        emailEditTextController,
        passwordController,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? passwordController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordController: passwordController ?? this.passwordController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
