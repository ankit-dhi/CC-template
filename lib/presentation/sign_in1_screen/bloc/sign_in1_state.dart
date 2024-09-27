// ignore_for_file: must_be_immutable

part of 'sign_in1_bloc.dart';

/// Represents the state of SignIn1 in the application.
class SignIn1State extends Equatable {
  SignIn1State({
    this.orLoginWithEmailController,
    this.spacerController,
    this.signIn1ModelObj,
  });

  TextEditingController? orLoginWithEmailController;

  TextEditingController? spacerController;

  SignIn1Model? signIn1ModelObj;

  @override
  List<Object?> get props => [
        orLoginWithEmailController,
        spacerController,
        signIn1ModelObj,
      ];
  SignIn1State copyWith({
    TextEditingController? orLoginWithEmailController,
    TextEditingController? spacerController,
    SignIn1Model? signIn1ModelObj,
  }) {
    return SignIn1State(
      orLoginWithEmailController:
          orLoginWithEmailController ?? this.orLoginWithEmailController,
      spacerController: spacerController ?? this.spacerController,
      signIn1ModelObj: signIn1ModelObj ?? this.signIn1ModelObj,
    );
  }
}
