// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in2_bloc.dart';

/// Represents the state of SignUpAndSignIn2 in the application.
class SignUpAndSignIn2State extends Equatable {
  SignUpAndSignIn2State({this.signUpAndSignIn2ModelObj});

  SignUpAndSignIn2Model? signUpAndSignIn2ModelObj;

  @override
  List<Object?> get props => [
        signUpAndSignIn2ModelObj,
      ];
  SignUpAndSignIn2State copyWith(
      {SignUpAndSignIn2Model? signUpAndSignIn2ModelObj}) {
    return SignUpAndSignIn2State(
      signUpAndSignIn2ModelObj:
          signUpAndSignIn2ModelObj ?? this.signUpAndSignIn2ModelObj,
    );
  }
}
