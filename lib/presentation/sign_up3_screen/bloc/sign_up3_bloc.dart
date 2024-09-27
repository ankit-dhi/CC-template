import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up3_screen/models/sign_up3_model.dart';
part 'sign_up3_event.dart';
part 'sign_up3_state.dart';

/// A bloc that manages the state of a SignUp3 according to the event that is dispatched to it.
class SignUp3Bloc extends Bloc<SignUp3Event, SignUp3State> {
  SignUp3Bloc(SignUp3State initialState) : super(initialState) {
    on<SignUp3InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUp3State> emit,
  ) {
    emit(state.copyWith(iHaveReadThePrivacePolicy: event.value));
  }

  _onInitialize(
    SignUp3InitialEvent event,
    Emitter<SignUp3State> emit,
  ) async {
    emit(state.copyWith(
        vectorNineController: TextEditingController(),
        emailController: TextEditingController(),
        iHaveReadThePrivacePolicy: false));
  }
}
