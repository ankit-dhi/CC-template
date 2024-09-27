import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(iHaveReadThePrivacePolicy: event.value));
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
        vectorNineController: TextEditingController(),
        emailController: TextEditingController(),
        iHaveReadThePrivacePolicy: false));
  }
}
