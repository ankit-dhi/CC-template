import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome_sleep2_screen/models/welcome_sleep2_model.dart';
part 'welcome_sleep2_event.dart';
part 'welcome_sleep2_state.dart';

/// A bloc that manages the state of a WelcomeSleep2 according to the event that is dispatched to it.
class WelcomeSleep2Bloc extends Bloc<WelcomeSleep2Event, WelcomeSleep2State> {
  WelcomeSleep2Bloc(WelcomeSleep2State initialState) : super(initialState) {
    on<WelcomeSleep2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeSleep2InitialEvent event,
    Emitter<WelcomeSleep2State> emit,
  ) async {}
}
