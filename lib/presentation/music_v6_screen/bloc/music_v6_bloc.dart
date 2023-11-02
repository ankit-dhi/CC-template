import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_v6_screen/models/music_v6_model.dart';
part 'music_v6_event.dart';
part 'music_v6_state.dart';

/// A bloc that manages the state of a MusicV6 according to the event that is dispatched to it.
class MusicV6Bloc extends Bloc<MusicV6Event, MusicV6State> {
  MusicV6Bloc(MusicV6State initialState) : super(initialState) {
    on<MusicV6InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicV6InitialEvent event,
    Emitter<MusicV6State> emit,
  ) async {}
}
