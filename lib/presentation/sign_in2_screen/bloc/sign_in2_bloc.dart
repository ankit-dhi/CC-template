import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_in2_screen/models/sign_in2_model.dart';
part 'sign_in2_event.dart';
part 'sign_in2_state.dart';

/// A bloc that manages the state of a SignIn2 according to the event that is dispatched to it.
class SignIn2Bloc extends Bloc<SignIn2Event, SignIn2State> {
  SignIn2Bloc(SignIn2State initialState) : super(initialState) {
    on<SignIn2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignIn2InitialEvent event,
    Emitter<SignIn2State> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
