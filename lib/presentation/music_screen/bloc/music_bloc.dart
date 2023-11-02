import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ankit_s_application110/presentation/music_screen/models/music_model.dart';
part 'music_event.dart';
part 'music_state.dart';

/// A bloc that manages the state of a Music according to the event that is dispatched to it.
class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc(MusicState initialState) : super(initialState) {
    on<MusicInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicInitialEvent event,
    Emitter<MusicState> emit,
  ) async {}
}
