import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music4_screen/models/music4_model.dart';
part 'music4_event.dart';
part 'music4_state.dart';

/// A bloc that manages the state of a Music4 according to the event that is dispatched to it.
class Music4Bloc extends Bloc<Music4Event, Music4State> {
  Music4Bloc(Music4State initialState) : super(initialState) {
    on<Music4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Music4InitialEvent event,
    Emitter<Music4State> emit,
  ) async {}
}
