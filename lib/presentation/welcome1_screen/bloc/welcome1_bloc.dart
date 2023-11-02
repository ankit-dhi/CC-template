import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome1_screen/models/welcome1_model.dart';
part 'welcome1_event.dart';
part 'welcome1_state.dart';

/// A bloc that manages the state of a Welcome1 according to the event that is dispatched to it.
class Welcome1Bloc extends Bloc<Welcome1Event, Welcome1State> {
  Welcome1Bloc(Welcome1State initialState) : super(initialState) {
    on<Welcome1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Welcome1InitialEvent event,
    Emitter<Welcome1State> emit,
  ) async {}
}
