import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_v3_screen/models/music_v3_model.dart';
part 'music_v3_event.dart';
part 'music_v3_state.dart';

/// A bloc that manages the state of a MusicV3 according to the event that is dispatched to it.
class MusicV3Bloc extends Bloc<MusicV3Event, MusicV3State> {
  MusicV3Bloc(MusicV3State initialState) : super(initialState) {
    on<MusicV3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicV3InitialEvent event,
    Emitter<MusicV3State> emit,
  ) async {}
}
