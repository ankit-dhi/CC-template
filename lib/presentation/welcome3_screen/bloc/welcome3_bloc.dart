import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/welcome3_screen/models/welcome3_model.dart';
part 'welcome3_event.dart';
part 'welcome3_state.dart';

/// A bloc that manages the state of a Welcome3 according to the event that is dispatched to it.
class Welcome3Bloc extends Bloc<Welcome3Event, Welcome3State> {
  Welcome3Bloc(Welcome3State initialState) : super(initialState) {
    on<Welcome3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Welcome3InitialEvent event,
    Emitter<Welcome3State> emit,
  ) async {}
}
