// ignore_for_file: must_be_immutable

part of 'sign_in3_bloc.dart';

/// Represents the state of SignIn3 in the application.
class SignIn3State extends Equatable {
  SignIn3State({
    this.emailController,
    this.passwordController,
    this.signIn3ModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignIn3Model? signIn3ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        signIn3ModelObj,
      ];
  SignIn3State copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignIn3Model? signIn3ModelObj,
  }) {
    return SignIn3State(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signIn3ModelObj: signIn3ModelObj ?? this.signIn3ModelObj,
    );
  }
}
