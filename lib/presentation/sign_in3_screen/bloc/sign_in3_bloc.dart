import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_in3_screen/models/sign_in3_model.dart';
part 'sign_in3_event.dart';
part 'sign_in3_state.dart';

/// A bloc that manages the state of a SignIn3 according to the event that is dispatched to it.
class SignIn3Bloc extends Bloc<SignIn3Event, SignIn3State> {
  SignIn3Bloc(SignIn3State initialState) : super(initialState) {
    on<SignIn3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignIn3InitialEvent event,
    Emitter<SignIn3State> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
