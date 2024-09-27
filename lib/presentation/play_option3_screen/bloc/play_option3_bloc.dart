import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playoptionlist3_item_model.dart';
import 'package:ankit_s_application110/presentation/play_option3_screen/models/play_option3_model.dart';
part 'play_option3_event.dart';
part 'play_option3_state.dart';

/// A bloc that manages the state of a PlayOption3 according to the event that is dispatched to it.
class PlayOption3Bloc extends Bloc<PlayOption3Event, PlayOption3State> {
  PlayOption3Bloc(PlayOption3State initialState) : super(initialState) {
    on<PlayOption3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayOption3InitialEvent event,
    Emitter<PlayOption3State> emit,
  ) async {
    emit(state.copyWith(
        playOption3ModelObj: state.playOption3ModelObj?.copyWith(
            playoptionlist3ItemList: fillPlayoptionlist3ItemList())));
  }

  List<Playoptionlist3ItemModel> fillPlayoptionlist3ItemList() {
    return [
      Playoptionlist3ItemModel(
          moonClouds: ImageConstant.imgMaskGroup122x177,
          moonClouds1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Playoptionlist3ItemModel(
          moonClouds: ImageConstant.imgXmlid134,
          moonClouds1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
