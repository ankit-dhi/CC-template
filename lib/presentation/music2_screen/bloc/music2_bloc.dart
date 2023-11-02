import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music2_screen/models/music2_model.dart';
part 'music2_event.dart';
part 'music2_state.dart';

/// A bloc that manages the state of a Music2 according to the event that is dispatched to it.
class Music2Bloc extends Bloc<Music2Event, Music2State> {
  Music2Bloc(Music2State initialState) : super(initialState) {
    on<Music2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Music2InitialEvent event,
    Emitter<Music2State> emit,
  ) async {}
}
