import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application113/presentation/sleep_container_screen/models/sleep_container_model.dart';
part 'sleep_container_event.dart';
part 'sleep_container_state.dart';

/// A bloc that manages the state of a SleepContainer according to the event that is dispatched to it.
class SleepContainerBloc
    extends Bloc<SleepContainerEvent, SleepContainerState> {
  SleepContainerBloc(SleepContainerState initialState) : super(initialState) {
    on<SleepContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepContainerInitialEvent event,
    Emitter<SleepContainerState> emit,
  ) async {}
}
