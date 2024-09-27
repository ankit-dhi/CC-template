import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playoptionlist2_item_model.dart';
import 'package:ankit_s_application110/presentation/play_option2_screen/models/play_option2_model.dart';
part 'play_option2_event.dart';
part 'play_option2_state.dart';

/// A bloc that manages the state of a PlayOption2 according to the event that is dispatched to it.
class PlayOption2Bloc extends Bloc<PlayOption2Event, PlayOption2State> {
  PlayOption2Bloc(PlayOption2State initialState) : super(initialState) {
    on<PlayOption2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayOption2InitialEvent event,
    Emitter<PlayOption2State> emit,
  ) async {
    emit(state.copyWith(
        playOption2ModelObj: state.playOption2ModelObj?.copyWith(
            playoptionlist2ItemList: fillPlayoptionlist2ItemList())));
  }

  List<Playoptionlist2ItemModel> fillPlayoptionlist2ItemList() {
    return [
      Playoptionlist2ItemModel(
          moonClouds: ImageConstant.imgMaskGroup122x177,
          moonClouds1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Playoptionlist2ItemModel(
          moonClouds: ImageConstant.imgXmlid134,
          moonClouds1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
