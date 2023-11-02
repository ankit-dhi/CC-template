import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/sign_in4_screen/models/sign_in4_model.dart';
part 'sign_in4_event.dart';
part 'sign_in4_state.dart';

/// A bloc that manages the state of a SignIn4 according to the event that is dispatched to it.
class SignIn4Bloc extends Bloc<SignIn4Event, SignIn4State> {
  SignIn4Bloc(SignIn4State initialState) : super(initialState) {
    on<SignIn4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignIn4InitialEvent event,
    Emitter<SignIn4State> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
