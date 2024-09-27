import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_v2_screen/models/music_v2_model.dart';
part 'music_v2_event.dart';
part 'music_v2_state.dart';

/// A bloc that manages the state of a MusicV2 according to the event that is dispatched to it.
class MusicV2Bloc extends Bloc<MusicV2Event, MusicV2State> {
  MusicV2Bloc(MusicV2State initialState) : super(initialState) {
    on<MusicV2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicV2InitialEvent event,
    Emitter<MusicV2State> emit,
  ) async {}
}
