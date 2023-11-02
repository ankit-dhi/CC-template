import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playoptionlist1_item_model.dart';
import 'package:ankit_s_application110/presentation/play_option1_screen/models/play_option1_model.dart';
part 'play_option1_event.dart';
part 'play_option1_state.dart';

/// A bloc that manages the state of a PlayOption1 according to the event that is dispatched to it.
class PlayOption1Bloc extends Bloc<PlayOption1Event, PlayOption1State> {
  PlayOption1Bloc(PlayOption1State initialState) : super(initialState) {
    on<PlayOption1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayOption1InitialEvent event,
    Emitter<PlayOption1State> emit,
  ) async {
    emit(state.copyWith(
        playOption1ModelObj: state.playOption1ModelObj?.copyWith(
            playoptionlist1ItemList: fillPlayoptionlist1ItemList())));
  }

  List<Playoptionlist1ItemModel> fillPlayoptionlist1ItemList() {
    return [
      Playoptionlist1ItemModel(
          moonClouds: ImageConstant.imgMaskGroup122x177,
          moonClouds1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Playoptionlist1ItemModel(
          moonClouds: ImageConstant.imgXmlid134,
          moonClouds1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
