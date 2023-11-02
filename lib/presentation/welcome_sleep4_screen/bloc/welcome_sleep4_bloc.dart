import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome_sleep4_screen/models/welcome_sleep4_model.dart';
part 'welcome_sleep4_event.dart';
part 'welcome_sleep4_state.dart';

/// A bloc that manages the state of a WelcomeSleep4 according to the event that is dispatched to it.
class WelcomeSleep4Bloc extends Bloc<WelcomeSleep4Event, WelcomeSleep4State> {
  WelcomeSleep4Bloc(WelcomeSleep4State initialState) : super(initialState) {
    on<WelcomeSleep4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeSleep4InitialEvent event,
    Emitter<WelcomeSleep4State> emit,
  ) async {}
}
