import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_and_sign_in3_screen/models/sign_up_and_sign_in3_model.dart';
part 'sign_up_and_sign_in3_event.dart';
part 'sign_up_and_sign_in3_state.dart';

/// A bloc that manages the state of a SignUpAndSignIn3 according to the event that is dispatched to it.
class SignUpAndSignIn3Bloc
    extends Bloc<SignUpAndSignIn3Event, SignUpAndSignIn3State> {
  SignUpAndSignIn3Bloc(SignUpAndSignIn3State initialState)
      : super(initialState) {
    on<SignUpAndSignIn3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpAndSignIn3InitialEvent event,
    Emitter<SignUpAndSignIn3State> emit,
  ) async {}
}
