// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in3_bloc.dart';

/// Represents the state of SignUpAndSignIn3 in the application.
class SignUpAndSignIn3State extends Equatable {
  SignUpAndSignIn3State({this.signUpAndSignIn3ModelObj});

  SignUpAndSignIn3Model? signUpAndSignIn3ModelObj;

  @override
  List<Object?> get props => [
        signUpAndSignIn3ModelObj,
      ];
  SignUpAndSignIn3State copyWith(
      {SignUpAndSignIn3Model? signUpAndSignIn3ModelObj}) {
    return SignUpAndSignIn3State(
      signUpAndSignIn3ModelObj:
          signUpAndSignIn3ModelObj ?? this.signUpAndSignIn3ModelObj,
    );
  }
}
