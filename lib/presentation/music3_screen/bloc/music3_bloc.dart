import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music3_screen/models/music3_model.dart';
part 'music3_event.dart';
part 'music3_state.dart';

/// A bloc that manages the state of a Music3 according to the event that is dispatched to it.
class Music3Bloc extends Bloc<Music3Event, Music3State> {
  Music3Bloc(Music3State initialState) : super(initialState) {
    on<Music3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Music3InitialEvent event,
    Emitter<Music3State> emit,
  ) async {}
}
