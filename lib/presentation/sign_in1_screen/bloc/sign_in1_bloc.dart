import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_in1_screen/models/sign_in1_model.dart';
part 'sign_in1_event.dart';
part 'sign_in1_state.dart';

/// A bloc that manages the state of a SignIn1 according to the event that is dispatched to it.
class SignIn1Bloc extends Bloc<SignIn1Event, SignIn1State> {
  SignIn1Bloc(SignIn1State initialState) : super(initialState) {
    on<SignIn1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignIn1InitialEvent event,
    Emitter<SignIn1State> emit,
  ) async {
    emit(state.copyWith(
        orLoginWithEmailController: TextEditingController(),
        spacerController: TextEditingController()));
  }
}
