import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playoptionlist4_item_model.dart';
import 'package:ankit_s_application110/presentation/play_option4_screen/models/play_option4_model.dart';
part 'play_option4_event.dart';
part 'play_option4_state.dart';

/// A bloc that manages the state of a PlayOption4 according to the event that is dispatched to it.
class PlayOption4Bloc extends Bloc<PlayOption4Event, PlayOption4State> {
  PlayOption4Bloc(PlayOption4State initialState) : super(initialState) {
    on<PlayOption4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayOption4InitialEvent event,
    Emitter<PlayOption4State> emit,
  ) async {
    emit(state.copyWith(
        playOption4ModelObj: state.playOption4ModelObj?.copyWith(
            playoptionlist4ItemList: fillPlayoptionlist4ItemList())));
  }

  List<Playoptionlist4ItemModel> fillPlayoptionlist4ItemList() {
    return [
      Playoptionlist4ItemModel(
          moonClouds: ImageConstant.imgMaskGroup122x177,
          moonClouds1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Playoptionlist4ItemModel(
          moonClouds: ImageConstant.imgXmlid134,
          moonClouds1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
