import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_v5_screen/models/music_v5_model.dart';
part 'music_v5_event.dart';
part 'music_v5_state.dart';

/// A bloc that manages the state of a MusicV5 according to the event that is dispatched to it.
class MusicV5Bloc extends Bloc<MusicV5Event, MusicV5State> {
  MusicV5Bloc(MusicV5State initialState) : super(initialState) {
    on<MusicV5InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicV5InitialEvent event,
    Emitter<MusicV5State> emit,
  ) async {}
}
