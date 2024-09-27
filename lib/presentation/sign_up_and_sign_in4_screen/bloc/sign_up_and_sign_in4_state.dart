// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in4_bloc.dart';

/// Represents the state of SignUpAndSignIn4 in the application.
class SignUpAndSignIn4State extends Equatable {
  SignUpAndSignIn4State({this.signUpAndSignIn4ModelObj});

  SignUpAndSignIn4Model? signUpAndSignIn4ModelObj;

  @override
  List<Object?> get props => [
        signUpAndSignIn4ModelObj,
      ];
  SignUpAndSignIn4State copyWith(
      {SignUpAndSignIn4Model? signUpAndSignIn4ModelObj}) {
    return SignUpAndSignIn4State(
      signUpAndSignIn4ModelObj:
          signUpAndSignIn4ModelObj ?? this.signUpAndSignIn4ModelObj,
    );
  }
}
