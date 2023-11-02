import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_v4_screen/models/music_v4_model.dart';
part 'music_v4_event.dart';
part 'music_v4_state.dart';

/// A bloc that manages the state of a MusicV4 according to the event that is dispatched to it.
class MusicV4Bloc extends Bloc<MusicV4Event, MusicV4State> {
  MusicV4Bloc(MusicV4State initialState) : super(initialState) {
    on<MusicV4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicV4InitialEvent event,
    Emitter<MusicV4State> emit,
  ) async {}
}
