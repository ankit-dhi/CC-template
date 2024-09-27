import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_and_sign_in4_screen/models/sign_up_and_sign_in4_model.dart';
part 'sign_up_and_sign_in4_event.dart';
part 'sign_up_and_sign_in4_state.dart';

/// A bloc that manages the state of a SignUpAndSignIn4 according to the event that is dispatched to it.
class SignUpAndSignIn4Bloc
    extends Bloc<SignUpAndSignIn4Event, SignUpAndSignIn4State> {
  SignUpAndSignIn4Bloc(SignUpAndSignIn4State initialState)
      : super(initialState) {
    on<SignUpAndSignIn4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpAndSignIn4InitialEvent event,
    Emitter<SignUpAndSignIn4State> emit,
  ) async {}
}
