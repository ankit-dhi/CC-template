// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in_bloc.dart';

/// Represents the state of SignUpAndSignIn in the application.
class SignUpAndSignInState extends Equatable {
  SignUpAndSignInState({this.signUpAndSignInModelObj});

  SignUpAndSignInModel? signUpAndSignInModelObj;

  @override
  List<Object?> get props => [
        signUpAndSignInModelObj,
      ];
  SignUpAndSignInState copyWith(
      {SignUpAndSignInModel? signUpAndSignInModelObj}) {
    return SignUpAndSignInState(
      signUpAndSignInModelObj:
          signUpAndSignInModelObj ?? this.signUpAndSignInModelObj,
    );
  }
}
