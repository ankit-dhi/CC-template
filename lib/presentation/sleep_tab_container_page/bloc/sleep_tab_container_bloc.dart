import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application113/presentation/sleep_tab_container_page/models/sleep_tab_container_model.dart';
part 'sleep_tab_container_event.dart';
part 'sleep_tab_container_state.dart';

/// A bloc that manages the state of a SleepTabContainer according to the event that is dispatched to it.
class SleepTabContainerBloc
    extends Bloc<SleepTabContainerEvent, SleepTabContainerState> {
  SleepTabContainerBloc(SleepTabContainerState initialState)
      : super(initialState) {
    on<SleepTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepTabContainerInitialEvent event,
    Emitter<SleepTabContainerState> emit,
  ) async {}
}
