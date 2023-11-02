import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome_sleep3_screen/models/welcome_sleep3_model.dart';
part 'welcome_sleep3_event.dart';
part 'welcome_sleep3_state.dart';

/// A bloc that manages the state of a WelcomeSleep3 according to the event that is dispatched to it.
class WelcomeSleep3Bloc extends Bloc<WelcomeSleep3Event, WelcomeSleep3State> {
  WelcomeSleep3Bloc(WelcomeSleep3State initialState) : super(initialState) {
    on<WelcomeSleep3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeSleep3InitialEvent event,
    Emitter<WelcomeSleep3State> emit,
  ) async {}
}
