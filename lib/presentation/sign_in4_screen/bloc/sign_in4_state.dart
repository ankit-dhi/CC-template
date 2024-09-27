// ignore_for_file: must_be_immutable

part of 'sign_in4_bloc.dart';

/// Represents the state of SignIn4 in the application.
class SignIn4State extends Equatable {
  SignIn4State({
    this.emailController,
    this.passwordController,
    this.signIn4ModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignIn4Model? signIn4ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        signIn4ModelObj,
      ];
  SignIn4State copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignIn4Model? signIn4ModelObj,
  }) {
    return SignIn4State(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signIn4ModelObj: signIn4ModelObj ?? this.signIn4ModelObj,
    );
  }
}
