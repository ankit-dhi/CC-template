import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up4_screen/models/sign_up4_model.dart';
part 'sign_up4_event.dart';
part 'sign_up4_state.dart';

/// A bloc that manages the state of a SignUp4 according to the event that is dispatched to it.
class SignUp4Bloc extends Bloc<SignUp4Event, SignUp4State> {
  SignUp4Bloc(SignUp4State initialState) : super(initialState) {
    on<SignUp4InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUp4State> emit,
  ) {
    emit(state.copyWith(iHaveReadThePrivacePolicy: event.value));
  }

  _onInitialize(
    SignUp4InitialEvent event,
    Emitter<SignUp4State> emit,
  ) async {
    emit(state.copyWith(
        vectorNineController: TextEditingController(),
        emailController: TextEditingController(),
        iHaveReadThePrivacePolicy: false));
  }
}
