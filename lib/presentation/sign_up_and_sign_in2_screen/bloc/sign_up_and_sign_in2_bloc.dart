import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_and_sign_in2_screen/models/sign_up_and_sign_in2_model.dart';
part 'sign_up_and_sign_in2_event.dart';
part 'sign_up_and_sign_in2_state.dart';

/// A bloc that manages the state of a SignUpAndSignIn2 according to the event that is dispatched to it.
class SignUpAndSignIn2Bloc
    extends Bloc<SignUpAndSignIn2Event, SignUpAndSignIn2State> {
  SignUpAndSignIn2Bloc(SignUpAndSignIn2State initialState)
      : super(initialState) {
    on<SignUpAndSignIn2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpAndSignIn2InitialEvent event,
    Emitter<SignUpAndSignIn2State> emit,
  ) async {}
}
