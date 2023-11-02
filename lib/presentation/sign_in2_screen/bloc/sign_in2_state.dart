// ignore_for_file: must_be_immutable

part of 'sign_in2_bloc.dart';

/// Represents the state of SignIn2 in the application.
class SignIn2State extends Equatable {
  SignIn2State({
    this.emailController,
    this.passwordController,
    this.signIn2ModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignIn2Model? signIn2ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        signIn2ModelObj,
      ];
  SignIn2State copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignIn2Model? signIn2ModelObj,
  }) {
    return SignIn2State(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signIn2ModelObj: signIn2ModelObj ?? this.signIn2ModelObj,
    );
  }
}
