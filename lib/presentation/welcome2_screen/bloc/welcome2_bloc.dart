import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome2_screen/models/welcome2_model.dart';
part 'welcome2_event.dart';
part 'welcome2_state.dart';

/// A bloc that manages the state of a Welcome2 according to the event that is dispatched to it.
class Welcome2Bloc extends Bloc<Welcome2Event, Welcome2State> {
  Welcome2Bloc(Welcome2State initialState) : super(initialState) {
    on<Welcome2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Welcome2InitialEvent event,
    Emitter<Welcome2State> emit,
  ) async {}
}
