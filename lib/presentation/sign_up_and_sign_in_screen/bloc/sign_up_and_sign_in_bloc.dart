import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_and_sign_in_screen/models/sign_up_and_sign_in_model.dart';
part 'sign_up_and_sign_in_event.dart';
part 'sign_up_and_sign_in_state.dart';

/// A bloc that manages the state of a SignUpAndSignIn according to the event that is dispatched to it.
class SignUpAndSignInBloc
    extends Bloc<SignUpAndSignInEvent, SignUpAndSignInState> {
  SignUpAndSignInBloc(SignUpAndSignInState initialState) : super(initialState) {
    on<SignUpAndSignInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpAndSignInInitialEvent event,
    Emitter<SignUpAndSignInState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signInScreen,
      );
    });
  }
}
