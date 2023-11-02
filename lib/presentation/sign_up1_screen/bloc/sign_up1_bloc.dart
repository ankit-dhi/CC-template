import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up1_screen/models/sign_up1_model.dart';
part 'sign_up1_event.dart';
part 'sign_up1_state.dart';

/// A bloc that manages the state of a SignUp1 according to the event that is dispatched to it.
class SignUp1Bloc extends Bloc<SignUp1Event, SignUp1State> {
  SignUp1Bloc(SignUp1State initialState) : super(initialState) {
    on<SignUp1InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUp1State> emit,
  ) {
    emit(state.copyWith(iHaveReadThePrivacePolicy: event.value));
  }

  _onInitialize(
    SignUp1InitialEvent event,
    Emitter<SignUp1State> emit,
  ) async {
    emit(state.copyWith(
        createYourAccountController: TextEditingController(),
        emailController: TextEditingController(),
        iHaveReadThePrivacePolicy: false));
  }
}
