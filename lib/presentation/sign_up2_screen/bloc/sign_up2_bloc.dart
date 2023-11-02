import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up2_screen/models/sign_up2_model.dart';
part 'sign_up2_event.dart';
part 'sign_up2_state.dart';

/// A bloc that manages the state of a SignUp2 according to the event that is dispatched to it.
class SignUp2Bloc extends Bloc<SignUp2Event, SignUp2State> {
  SignUp2Bloc(SignUp2State initialState) : super(initialState) {
    on<SignUp2InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUp2State> emit,
  ) {
    emit(state.copyWith(iHaveReadThePrivacePolicy: event.value));
  }

  _onInitialize(
    SignUp2InitialEvent event,
    Emitter<SignUp2State> emit,
  ) async {
    emit(state.copyWith(
        vectorNineController: TextEditingController(),
        emailController: TextEditingController(),
        iHaveReadThePrivacePolicy: false));
  }
}
