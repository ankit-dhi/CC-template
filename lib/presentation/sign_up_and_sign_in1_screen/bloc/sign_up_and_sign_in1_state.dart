// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in1_bloc.dart';

/// Represents the state of SignUpAndSignIn1 in the application.
class SignUpAndSignIn1State extends Equatable {
  SignUpAndSignIn1State({this.signUpAndSignIn1ModelObj});

  SignUpAndSignIn1Model? signUpAndSignIn1ModelObj;

  @override
  List<Object?> get props => [
        signUpAndSignIn1ModelObj,
      ];
  SignUpAndSignIn1State copyWith(
      {SignUpAndSignIn1Model? signUpAndSignIn1ModelObj}) {
    return SignUpAndSignIn1State(
      signUpAndSignIn1ModelObj:
          signUpAndSignIn1ModelObj ?? this.signUpAndSignIn1ModelObj,
    );
  }
}
