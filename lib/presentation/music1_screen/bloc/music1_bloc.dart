import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music1_screen/models/music1_model.dart';
part 'music1_event.dart';
part 'music1_state.dart';

/// A bloc that manages the state of a Music1 according to the event that is dispatched to it.
class Music1Bloc extends Bloc<Music1Event, Music1State> {
  Music1Bloc(Music1State initialState) : super(initialState) {
    on<Music1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Music1InitialEvent event,
    Emitter<Music1State> emit,
  ) async {}
}
