import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome_sleep_screen/models/welcome_sleep_model.dart';
part 'welcome_sleep_event.dart';
part 'welcome_sleep_state.dart';

/// A bloc that manages the state of a WelcomeSleep according to the event that is dispatched to it.
class WelcomeSleepBloc extends Bloc<WelcomeSleepEvent, WelcomeSleepState> {
  WelcomeSleepBloc(WelcomeSleepState initialState) : super(initialState) {
    on<WelcomeSleepInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeSleepInitialEvent event,
    Emitter<WelcomeSleepState> emit,
  ) async {}
}
