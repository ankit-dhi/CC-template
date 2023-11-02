import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_and_sign_in1_screen/models/sign_up_and_sign_in1_model.dart';
part 'sign_up_and_sign_in1_event.dart';
part 'sign_up_and_sign_in1_state.dart';

/// A bloc that manages the state of a SignUpAndSignIn1 according to the event that is dispatched to it.
class SignUpAndSignIn1Bloc
    extends Bloc<SignUpAndSignIn1Event, SignUpAndSignIn1State> {
  SignUpAndSignIn1Bloc(SignUpAndSignIn1State initialState)
      : super(initialState) {
    on<SignUpAndSignIn1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpAndSignIn1InitialEvent event,
    Emitter<SignUpAndSignIn1State> emit,
  ) async {}
}
