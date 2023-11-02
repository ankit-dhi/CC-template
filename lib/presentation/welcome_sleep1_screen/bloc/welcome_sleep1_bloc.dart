import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome_sleep1_screen/models/welcome_sleep1_model.dart';
part 'welcome_sleep1_event.dart';
part 'welcome_sleep1_state.dart';

/// A bloc that manages the state of a WelcomeSleep1 according to the event that is dispatched to it.
class WelcomeSleep1Bloc extends Bloc<WelcomeSleep1Event, WelcomeSleep1State> {
  WelcomeSleep1Bloc(WelcomeSleep1State initialState) : super(initialState) {
    on<WelcomeSleep1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeSleep1InitialEvent event,
    Emitter<WelcomeSleep1State> emit,
  ) async {}
}
