import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome4_screen/models/welcome4_model.dart';
part 'welcome4_event.dart';
part 'welcome4_state.dart';

/// A bloc that manages the state of a Welcome4 according to the event that is dispatched to it.
class Welcome4Bloc extends Bloc<Welcome4Event, Welcome4State> {
  Welcome4Bloc(Welcome4State initialState) : super(initialState) {
    on<Welcome4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Welcome4InitialEvent event,
    Emitter<Welcome4State> emit,
  ) async {}
}
